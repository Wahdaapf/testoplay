<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class GeminiService
{
    private string $apiKey;
    private string $endpoint = 'https://api.groq.com/openai/v1/chat/completions';

    public function __construct()
    {
        $this->apiKey = config('services.groq.key');
    }

    private function getAvailableModels(): array
    {
        $configured = config('services.groq.model', env('GROQ_MODEL'));
        $models = [];

        if (!empty($configured)) {
            $models[] = $configured;
        }

        try {
            $resp = Http::timeout(10)
                ->withHeaders([
                    'Authorization' => 'Bearer ' . $this->apiKey,
                ])
                ->get('https://api.groq.com/openai/v1/models');

            if ($resp->successful()) {
                $remoteList = collect($resp->json('data', []))
                    ->pluck('id')
                    ->filter()
                    ->values()
                    ->all();

                // Prioritaskan model chat yang populer jika tersedia di akun
                $priority = [
                    'openai/gpt-oss-120b',
                    'openai/gpt-oss-20b',
                    'qwen/qwen3.8-27b',
                    'llama-3.3-70b-versatile',
                    'llama-3.1-8b-instant',
                ];

                foreach ($priority as $p) {
                    if (in_array($p, $remoteList)) {
                        $models[] = $p;
                    }
                }

                // Masukkan model teks lainnya dari respon Groq
                foreach ($remoteList as $id) {
                    if (!str_contains($id, 'whisper') && !str_contains($id, 'guard') && !str_contains($id, 'tts')) {
                        $models[] = $id;
                    }
                }
            }
        } catch (\Throwable $e) {
            // fallback if network fails
        }

        $fallback = [
            'openai/gpt-oss-120b',
            'openai/gpt-oss-20b',
            'qwen/qwen3.8-27b',
            'llama-3.3-70b-versatile',
            'llama-3.1-8b-instant',
        ];

        return array_values(array_unique(array_filter(array_merge($models, $fallback))));
    }

    public function analyzeTesterFeedback(string $misiNama, array $catatanList): string
    {
        $catatanText = collect($catatanList)
            ->filter()
            ->map(fn ($c, $i) => ($i + 1) . ". {$c}")
            ->implode("\n");

        $prompt = <<<PROMPT
Kamu adalah analis QA profesional. Analisis feedback berikut dari para tester aplikasi Android bernama "{$misiNama}".

Feedback dari tester:
{$catatanText}

Kembalikan HANYA JSON valid (tanpa markdown, tanpa komentar) dengan struktur berikut:
{
  "ringkasan": "2-3 kalimat ringkasan keseluruhan kualitas aplikasi",
  "skor": 7,
  "skor_label": "Cukup Layak",
  "skor_deskripsi": "Penjelasan singkat skor dalam 1 kalimat",
  "bugs": [
    {"judul": "Nama bug", "jumlah": 3, "severity": "critical"},
    {"judul": "Nama bug lain", "jumlah": 1, "severity": "minor"}
  ],
  "ux_issues": [
    {"judul": "Masalah UX", "detail": "penjelasan singkat"}
  ],
  "positif": [
    "Hal positif pertama",
    "Hal positif kedua"
  ],
  "rekomendasi": [
    {"prioritas": 1, "judul": "Judul rekomendasi", "detail": "Penjelasan tindakan yang harus dilakukan"},
    {"prioritas": 2, "judul": "Judul rekomendasi", "detail": "Penjelasan tindakan yang harus dilakukan"},
    {"prioritas": 3, "judul": "Judul rekomendasi", "detail": "Penjelasan tindakan yang harus dilakukan"}
  ]
}

Nilai severity: "critical" (crash/data loss), "major" (fitur tidak berfungsi), "minor" (gangguan kecil).
Skor 1-10: 1-3 tidak layak, 4-6 perlu perbaikan, 7-8 cukup layak, 9-10 siap launch.
PROMPT;

        $modelsToTry = $this->getAvailableModels();

        $lastError = null;
        $response = null;

        foreach ($modelsToTry as $currentModel) {
            $response = Http::timeout(30)
                ->withHeaders([
                    'Authorization' => 'Bearer ' . $this->apiKey,
                    'Content-Type'  => 'application/json',
                ])
                ->post($this->endpoint, [
                    'model'       => $currentModel,
                    'messages'    => [
                        ['role' => 'user', 'content' => $prompt],
                    ],
                    'temperature' => 0.3,
                    'max_tokens'  => 4096,
                ]);

            if ($response->successful()) {
                break;
            }

            $lastError = 'Groq API error (' . $currentModel . '): ' . $response->body();
        }

        if (!$response || $response->failed()) {
            throw new \RuntimeException($lastError ?? 'Groq API request failed.');
        }

        $text = data_get($response->json(), 'choices.0.message.content', '');

        $text = preg_replace('/^```json\s*/i', '', trim($text));
        $text = preg_replace('/\s*```$/', '', $text);

        json_decode($text);
        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new \RuntimeException('AI tidak mengembalikan JSON valid: ' . $text);
        }

        return $text;
    }
}
