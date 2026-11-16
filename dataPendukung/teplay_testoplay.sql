-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2026 at 10:37 AM
-- Server version: 10.11.18-MariaDB
-- PHP Version: 8.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teplay_testoplay`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_reports`
--

CREATE TABLE `ai_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_misi` bigint(20) UNSIGNED NOT NULL,
  `hari_ke` int(11) DEFAULT NULL,
  `result` longtext NOT NULL,
  `feedback_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_reports`
--

INSERT INTO `ai_reports` (`id`, `id_misi`, `hari_ke`, `result`, `feedback_count`, `created_at`, `updated_at`) VALUES
(1, 41, NULL, '{\n  \"ringkasan\": \"Aplikasi EduKid - Belajar Seru memiliki kualitas yang cukup baik, tetapi masih memiliki beberapa masalah UX dan bug yang perlu diperbaiki.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki kualitas yang cukup baik, tetapi masih perlu perbaikan pada beberapa aspek.\",\n  \"bugs\": [\n    {\"judul\": \"Bug crash di kuis level 3\", \"jumlah\": 2, \"severity\": \"critical\"},\n    {\"judul\": \"Bug tombol Next di halaman cerita tidak merespons\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Bug setelah ganti profil anak, progress belajar kembali ke nol\", \"jumlah\": 1, \"severity\": \"critical\"},\n    {\"judul\": \"Bug crash setelah ganti profil anak\", \"jumlah\": 1, \"severity\": \"critical\"},\n    {\"judul\": \"Bug tombol kembali di halaman kuis tidak berfungsi\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Bug iklan muncul di tengah-tengah sesi belajar\", \"jumlah\": 1, \"severity\": \"minor\"},\n    {\"judul\": \"Bug aplikasi memakan RAM besar\", \"jumlah\": 1, \"severity\": \"minor\"},\n    {\"judul\": \"Bug tidak ada mode offline\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Bug notifikasi pengingat belajar harian tidak muncul\", \"jumlah\": 1, \"severity\": \"minor\"},\n    {\"judul\": \"Bug crash di level kuis yang sama\", \"jumlah\": 1, \"severity\": \"critical\"},\n    {\"judul\": \"Bug ukuran file update terlalu besar\", \"jumlah\": 1, \"severity\": \"minor\"},\n    {\"judul\": \"Bug tombol logout tersembunyi\", \"jumlah\": 1, \"severity\": \"minor\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Font huruf terlalu kecil untuk anak usia 4-5 tahun\", \"detail\": \"Sangat susah dibaca mandiri\"},\n    {\"judul\": \"Tombol-tombol terlalu kecil untuk jari anak balita\", \"detail\": \"Sering terjadi salah pencet\"},\n    {\"judul\": \"Warna background agak terlalu gelap untuk mode malam\", \"detail\": \"Mata anak cepat lelah\"},\n    {\"judul\": \"Kategori materi kurang lengkap\", \"detail\": \"Saat ini hanya ada matematika dan bahasa saja\"},\n    {\"judul\": \"Tidak ada pilihan bahasa daerah\", \"detail\": \"Padahal target pengguna adalah anak-anak Indonesia\"},\n    {\"judul\": \"Tombol logout tersembunyi di menu\", \"detail\": \"Perlu dipindah ke tempat yang lebih jelas\"}\n  ],\n  \"positif\": [\n    \"Aplikasi stabil dan tidak ada crash hari ini\",\n    \"Fitur cerita interaktif berjalan lancar\",\n    \"Fitur kuis berjalan baik\",\n    \"Fitur progress anak bisa dilihat orang tua\",\n    \"Fitur daily challenge menarik\",\n    \"Fitur leaderboard antar anak memotivasi kompetisi positif\",\n    \"Fitur reward bintang efektif memotivasi anak untuk terus belajar\",\n    \"Fitur sharing hasil belajar ke media sosial orang tua sangat bagus\",\n    \"Animasi transisi antar halaman smooth dan tidak patah-patah\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Perbaiki bug crash di kuis level 3\", \"detail\": \"Perbaiki bug crash di kuis level 3 untuk memastikan aplikasi stabil\"},\n    {\"prioritas\": 2, \"judul\": \"Tambahkan mode offline\", \"detail\": \"Tambahkan mode offline untuk memungkinkan pengguna mengakses konten tanpa internet\"},\n    {\"prioritas\": 3, \"judul\": \"Perbaiki tombol Next di halaman cerita\", \"detail\": \"Perbaiki tombol Next di halaman cerita untuk memastikan tombol berfungsi dengan baik\"}\n  ]\n}', 42, '2026-06-09 09:03:27', '2026-06-09 09:03:27'),
(2, 41, 1, '{\n  \"ringkasan\": \"Aplikasi EduKid - Belajar Seru memiliki tampilan menarik, tetapi memerlukan perbaikan pada loading splash screen dan beberapa fitur.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki beberapa kelemahan, tetapi masih cukup layak untuk digunakan.\",\n  \"bugs\": [\n    {\"judul\": \"Loading splash screen terlalu lama\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Fitur tidak berfungsi\", \"jumlah\": 1, \"severity\": \"major\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Loading splash screen terlalu lama\", \"detail\": \"Splash screen memakan waktu sekitar 4 detik untuk menampilkan halaman utama.\"}\n  ],\n  \"positif\": [\n    \"Tampilan awal cukup menarik untuk anak-anak.\",\n    \"Warna-warna cerah sangat bagus dan cocok untuk anak.\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Percepat loading splash screen\", \"detail\": \"Perbaikan loading splash screen untuk meningkatkan pengalaman pengguna.\"},\n    {\"prioritas\": 2, \"judul\": \"Perbaikan fitur tidak berfungsi\", \"detail\": \"Perbaikan fitur yang tidak berfungsi untuk meningkatkan kualitas aplikasi.\"},\n    {\"prioritas\": 3, \"judul\": \"Perbaikan tampilan halaman utama\", \"detail\": \"Perbaikan tampilan halaman utama untuk meningkatkan pengalaman pengguna.\"}\n  ]\n}', 3, '2026-06-09 09:05:54', '2026-06-09 09:05:54'),
(3, 41, 2, '{\n  \"ringkasan\": \"Aplikasi EduKid memiliki beberapa kelebihan dan kekurangan. Fitur cerita interaktif berjalan lancar, menu navigasi mudah dipahami, tetapi ada beberapa bug yang perlu diperbaiki.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki beberapa kekurangan yang perlu diperbaiki, tetapi masih cukup layak untuk digunakan.\",\n  \"bugs\": [\n    {\"judul\": \"Tombol Next tidak merespons saat ditekan pertama kali\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Bug lainnya\", \"jumlah\": 0, \"severity\": \"minor\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Menu navigasi bawah mudah dipahami dan dioperasikan oleh anak-anak\", \"detail\": \"Tidak ada masalah UX yang signifikan\"}\n  ],\n  \"positif\": [\n    \"Fitur cerita interaktif berjalan lancar dan responsif.\",\n    \"Animasi karakter lucu dan menarik.\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Perbaiki tombol Next agar merespons saat ditekan pertama kali\", \"detail\": \"Perbaiki bug tombol Next agar tidak memerlukan ditekan dua kali.\"},\n    {\"prioritas\": 2, \"judul\": \"Perbaiki bug lainnya\", \"detail\": \"Perbaiki bug lainnya yang tidak teridentifikasi.\"},\n    {\"prioritas\": 3, \"judul\": \"Perbaiki responsifitas aplikasi\", \"detail\": \"Perbaiki responsifitas aplikasi agar lebih cepat dan stabil.\"}\n  ]\n}', 3, '2026-06-09 09:07:23', '2026-06-09 09:07:23'),
(4, 41, 3, '{\n  \"ringkasan\": \"Aplikasi EduKid memiliki beberapa masalah, tetapi fitur kuis dan suara feedbacknya menarik. Namun, font huruf terlalu kecil dan terdapat bug yang menyebabkan aplikasi crash.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki beberapa masalah, tetapi masih dapat digunakan dengan beberapa keterbatasan.\",\n  \"bugs\": [\n    {\"judul\": \"Kuis level 3 crash ketika soal nomor 7 dijawab\", \"jumlah\": 1, \"severity\": \"critical\"},\n    {\"judul\": \"Font huruf terlalu kecil\", \"jumlah\": 1, \"severity\": \"minor\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Font huruf terlalu kecil untuk anak usia 4-5 tahun, cukup susah dibaca mandiri.\", \"detail\": \"Font huruf yang digunakan terlalu kecil dan tidak dapat dibaca dengan jelas oleh anak-anak usia 4-5 tahun.\"}\n  ],\n  \"positif\": [\n    \"Fitur kuis berjalan baik.\",\n    \"Suara feedback benar/salah menyenangkan untuk anak.\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Perbaiki bug kuis level 3 yang crash ketika soal nomor 7 dijawab\", \"detail\": \"Perbaiki bug yang menyebabkan aplikasi crash ketika anak menjawab soal nomor 7 di kuis level 3.\"},\n    {\"prioritas\": 2, \"judul\": \"Perbesar font huruf untuk anak usia 4-5 tahun\", \"detail\": \"Perbesar font huruf yang digunakan agar dapat dibaca dengan jelas oleh anak-anak usia 4-5 tahun.\"},\n    {\"prioritas\": 3, \"judul\": \"Perbaiki suara feedback untuk lebih menarik\", \"detail\": \"Perbaiki suara feedback untuk lebih menarik dan menyenangkan bagi anak-anak.\"}\n  ]\n}', 3, '2026-06-09 10:14:30', '2026-06-09 10:14:30'),
(5, 41, 4, '{\n  \"ringkasan\": \"Aplikasi EduKid memiliki beberapa kelebihan dan kekurangan, tetapi masih perlu perbaikan.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki beberapa bug dan kekurangan UX, tetapi masih dapat digunakan dengan baik.\",\n  \"bugs\": [\n    {\"judul\": \"Tombol kembali di halaman kuis tidak berfungsi\", \"jumlah\": 1, \"severity\": \"major\"},\n    {\"judul\": \"Aplikasi tidak dapat menangani crash/data loss\", \"jumlah\": 0, \"severity\": \"critical\"},\n    {\"judul\": \"Lain-lain\", \"jumlah\": 0, \"severity\": \"minor\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Tombol kembali di halaman kuis tidak berfungsi\", \"detail\": \"Pengguna harus menggunakan tombol back dari HP untuk kembali ke halaman sebelumnya.\"}\n  ],\n  \"positif\": [\n    \"Fitur progress anak dapat dilihat oleh orang tua\",\n    \"Gambar ilustrasi cerita sangat bagus, detail, dan menarik perhatian anak\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Perbaiki tombol kembali di halaman kuis\", \"detail\": \"Tombol kembali harus berfungsi dengan baik untuk memudahkan pengguna.\"},\n    {\"prioritas\": 2, \"judul\": \"Perbaiki aplikasi untuk menangani crash/data loss\", \"detail\": \"Aplikasi harus dapat menangani crash/data loss untuk memastikan keamanan data pengguna.\"},\n    {\"prioritas\": 3, \"judul\": \"Perbaiki UX lainnya\", \"detail\": \"Aplikasi harus dapat memudahkan pengguna dengan UX yang baik.\"}\n  ]\n}', 3, '2026-06-09 10:15:10', '2026-06-09 10:15:10'),
(6, 41, 5, '{\n  \"ringkasan\": \"Aplikasi EduKid - Belajar Seru memiliki kualitas yang cukup baik, namun masih perlu perbaikan pada beberapa aspek.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi memiliki beberapa kelemahan, tetapi masih dapat digunakan dengan baik.\",\n  \"bugs\": [\n    {\"judul\": \"Iklan muncul di tengah-tengah sesi belajar\", \"jumlah\": 1, \"severity\": \"minor\"},\n    {\"judul\": \"Tidak ada crash\", \"jumlah\": 0, \"severity\": \"minor\"}\n  ],\n  \"ux_issues\": [\n    {\"judul\": \"Iklan muncul di tengah-tengah sesi belajar\", \"detail\": \"Sangat mengganggu pengalaman anak\"}\n  ],\n  \"positif\": [\n    \"Fitur reward bintang efektif memotivasi anak untuk terus belajar setiap hari\"\n  ],\n  \"rekomendasi\": [\n    {\"prioritas\": 1, \"judul\": \"Perbaiki fitur iklan untuk tidak mengganggu pengalaman anak\", \"detail\": \"Pastikan iklan hanya muncul pada waktu yang tepat dan tidak mengganggu proses belajar\"},\n    {\"prioritas\": 2, \"judul\": \"Perbaiki UX untuk mengurangi gangguan iklan\", \"detail\": \"Pastikan UX aplikasi dapat mengurangi gangguan iklan dan meningkatkan pengalaman anak\"},\n    {\"prioritas\": 3, \"judul\": \"Tambahan fitur untuk mengurangi gangguan iklan\", \"detail\": \"Pastikan fitur tambahan dapat mengurangi gangguan iklan dan meningkatkan pengalaman anak\"}\n  ]\n}', 3, '2026-06-09 13:23:40', '2026-06-09 13:23:40'),
(7, 49, NULL, '{\n  \"ringkasan\": \"Aplikasi Paket Premium memiliki fungsi utama yang tersedia, namun terdapat bug pada login dengan Google dan masalah responsivitas pada halaman login yang memengaruhi pengalaman pengguna.\",\n  \"skor\": 7,\n  \"skor_label\": \"Cukup Layak\",\n  \"skor_deskripsi\": \"Aplikasi dapat digunakan tetapi masih membutuhkan perbaikan pada proses login.\",\n  \"bugs\": [\n    {\n      \"judul\": \"Google login failure\",\n      \"jumlah\": 1,\n      \"severity\": \"major\"\n    }\n  ],\n  \"ux_issues\": [\n    {\n      \"judul\": \"Login page not responsive\",\n      \"detail\": \"Halaman login tidak menyesuaikan dengan ukuran layar perangkat, menyebabkan elemen terpotong atau tidak dapat diakses.\"\n    }\n  ],\n  \"positif\": [\n    \"Desain visual yang menarik\",\n    \"Fitur paket premium tersedia dan berfungsi dengan baik\"\n  ],\n  \"rekomendasi\": [\n    {\n      \"prioritas\": 1,\n      \"judul\": \"Perbaiki integrasi login Google\",\n      \"detail\": \"Debug dan perbaiki alur otentikasi Google agar tidak terjadi kegagalan login.\"\n    },\n    {\n      \"prioritas\": 2,\n      \"judul\": \"Optimasi responsivitas halaman login\",\n      \"detail\": \"Gunakan layout fleksibel dan ukuran elemen yang adaptif untuk semua ukuran layar.\"\n    },\n    {\n      \"prioritas\": 3,\n      \"judul\": \"Sediakan metode login alternatif\",\n      \"detail\": \"Tambahkan opsi login dengan email/password sebagai fallback bila login Google gagal.\"\n    }\n  ]\n}', 2, '2026-11-16 06:59:48', '2026-11-16 06:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('testoplay-cache-0a57cb53ba59c46fc4b692527a38a87c78d84028', 'i:1;', 1794814217),
('testoplay-cache-0a57cb53ba59c46fc4b692527a38a87c78d84028:timer', 'i:1794814217;', 1794814217),
('testoplay-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1794817871),
('testoplay-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1794817871;', 1794817871),
('testoplay-cache-livewire-rate-limiter:a0a3ef72ccf10fd69f238596209389505be39b0a', 'i:1;', 1794808587),
('testoplay-cache-livewire-rate-limiter:a0a3ef72ccf10fd69f238596209389505be39b0a:timer', 'i:1794808587;', 1794808587);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_07_000001_create_user_balances_table', 1),
(5, '2024_04_07_000002_create_user_activities_table', 1),
(6, '2024_04_07_000003_create_pakets_table', 1),
(7, '2024_04_07_000004_create_misis_table', 1),
(8, '2024_04_07_000005_create_pembayarans_table', 1),
(9, '2024_04_07_000006_create_misi_subs_table', 1),
(10, '2024_04_07_000007_create_misi_anggotas_table', 1),
(11, '2026_04_09_142306_add_role_to_users_table', 2),
(12, '2026_04_20_005700_add_logo_to_misi_table', 3),
(13, '2026_04_26_122533_add_aktif_to_paket_table', 4),
(14, '2026_04_26_125833_add_trusted_badge_to_paket_table', 5),
(15, '2024_04_07_000008_create_withdraw_table', 6),
(16, '2026_04_27_014558_add_short_desc_to_paket_table', 7),
(18, '2026_05_18_081017_add_reference_and_payment_url_to_pembayaran_table', 8),
(19, '2026_06_03_082243_add_xendit_fields_to_withdraw_table', 9),
(20, '2026_06_09_000001_add_catatan_tester_to_misi_sub', 99),
(21, '2026_06_09_000002_create_ai_reports_table', 99),
(22, '2026_06_09_000003_add_ai_report_to_paket', 99);

-- --------------------------------------------------------

--
-- Table structure for table `misi`
--

CREATE TABLE `misi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_paket` bigint(20) UNSIGNED NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `link_aplikasi` varchar(255) DEFAULT NULL,
  `instruksi` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `point` int(11) NOT NULL DEFAULT 0,
  `kapasitas` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misi`
--

INSERT INTO `misi` (`id`, `id_user`, `id_paket`, `nama_aplikasi`, `logo`, `link_aplikasi`, `instruksi`, `status`, `point`, `kapasitas`, `created_at`, `updated_at`) VALUES
(40, 16, 5, 'Fall Guys', 'logos/01KTN0K5Q2QFBV6CZQ9NGM6F7S.jpg', '-', '<p>Okelah</p>', 'open', 20, 1, '2026-06-09 08:40:15', '2026-06-09 09:08:31'),
(41, 18, 5, 'EduKid - Belajar Seru', NULL, 'https://play.google.com/store/apps/details?id=com.edukid.app', 'Install aplikasi, buka semua menu, coba fitur kuis dan cerita interaktif, screenshot halaman utama setelah digunakan minimal 5 menit.', 'running', 15000, 3, '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(42, 18, 5, 'DAme dane', 'logos/01KTN2MZNA2K57ZNGEQ5WZTXCD.jpg', '-', '<p>hjsdiuanosdajsdn</p><p></p>', 'open', 20, 0, '2026-06-09 09:16:12', '2026-06-09 09:17:07'),
(48, 2, 4, 'Aplikasi Paket Biasa', 'logos/01M7FGKM7PVEYA4VVEM80XS10K.jpg', 'https://testoplay.my.id/developer/misis/48/kelola-tester', '<p>Ini adalah langkah langkah</p>', 'running', 150, 2, '2026-11-15 18:48:44', '2026-11-16 07:44:17'),
(49, 2, 5, 'Aplikasi Paket Premium', 'logos/01M7FH1J8ZQGM33THPST76M4X1.jpg', 'https://testoplay.my.id/developer/misis/49/kelola-tester', '<p>Ini adalah instruksi</p>', 'running', 200, 2, '2026-11-15 18:56:21', '2026-11-15 19:00:48'),
(50, 2, 5, 'Aplikasi Testing', 'logos/01M7HFJD18WNQF4ECXKXT2AQFS.png', '-', '<p>Ini adalah Instruksi</p>', 'open', 200, 0, '2026-11-16 13:09:05', '2026-11-16 13:09:43'),
(51, 2, 5, 'ini test', 'logos/01M7HM7PFR2TJDWNAC4120EFA9.png', '-', '<p>hahahahha</p>', 'open', 200, 0, '2026-11-16 14:30:37', '2026-11-16 14:37:21'),
(52, 2, 5, 'test', 'logos/01M7HMV4FA1S36TKB7C5M6HVXF.png', '-', '<p>ahahaha</p>', 'open', 200, 0, '2026-11-16 14:41:14', '2026-11-16 14:56:28'),
(53, 2, 4, 'testtt', 'logos/01M7HP63ASHYNKGFM6J9QDZ0Z1.png', '-', '<p>sssss</p>', 'open', 150, 0, '2026-11-16 15:04:41', '2026-11-16 15:19:57'),
(54, 2, 4, 'yesss', 'logos/01M7HQAKQM8K7MCSDQYVVZQ5R0.png', '-', '<p>ddddd</p>', 'open', 150, 0, '2026-11-16 15:24:38', '2026-11-16 15:28:17'),
(55, 2, 5, 'cvcvcvc', 'logos/01M7HQN7Y120FXFHGKQCCRPZF1.png', '-', '<p>dddd</p>', 'pending', 200, 0, '2026-11-16 15:30:26', '2026-11-16 15:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `misi_anggota`
--

CREATE TABLE `misi_anggota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_misi` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misi_anggota`
--

INSERT INTO `misi_anggota` (`id`, `id_misi`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(22, 41, 22, 'selesai', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(23, 41, 23, 'selesai', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(24, 41, 24, 'selesai', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(25, 40, 16, 'pending', '2026-06-09 09:08:31', '2026-06-09 09:08:31'),
(28, 48, 28, 'progress', '2026-11-15 18:52:40', '2026-11-15 18:53:09'),
(29, 48, 29, 'progress', '2026-11-15 18:52:43', '2026-11-15 18:53:09'),
(30, 48, 30, 'failed', '2026-11-15 18:52:46', '2026-11-16 07:44:08'),
(31, 49, 28, 'progress', '2026-11-15 19:00:21', '2026-11-15 19:00:48'),
(32, 49, 29, 'progress', '2026-11-15 19:00:30', '2026-11-15 19:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `misi_sub`
--

CREATE TABLE `misi_sub` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_misi` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `hari_ke` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `catatan_tester` text DEFAULT NULL,
  `alasan_tolak` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misi_sub`
--

INSERT INTO `misi_sub` (`id`, `id_misi`, `id_user`, `hari_ke`, `image`, `desc`, `catatan_tester`, `alasan_tolak`, `status`, `created_at`, `updated_at`) VALUES
(197, 41, 22, 1, NULL, 'Daily Task Submission', 'Aplikasi berhasil diinstall dan dibuka. Tampilan awal cukup menarik untuk anak-anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(198, 41, 22, 2, NULL, 'Daily Task Submission', 'Fitur cerita interaktif berjalan lancar. Animasi karakter lucu dan responsif.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(199, 41, 22, 3, NULL, 'Daily Task Submission', 'Fitur kuis berjalan baik. Suara feedback benar/salah menyenangkan untuk anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(200, 41, 22, 4, NULL, 'Daily Task Submission', 'Fitur progress anak bisa dilihat orang tua. Sangat berguna untuk monitoring.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(201, 41, 22, 5, NULL, 'Daily Task Submission', 'Tidak ada crash hari ini. Semua fitur berjalan normal dan stabil.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(202, 41, 22, 6, NULL, 'Daily Task Submission', 'Fitur daily challenge menarik, anak saya antusias membuka aplikasi tiap hari.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(203, 41, 22, 7, NULL, 'Daily Task Submission', 'Loading konten cerita lambat saat koneksi 4G biasa, perlu optimasi lebih lanjut.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(204, 41, 22, 8, NULL, 'Daily Task Submission', 'Fitur audio narasi cerita jernih dan jelas. Pengucapan kata-kata sudah benar.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(205, 41, 22, 9, NULL, 'Daily Task Submission', 'Performa lebih baik dari hari sebelumnya setelah restart HP. Sangat stabil.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(206, 41, 22, 10, NULL, 'Daily Task Submission', 'Fitur leaderboard antar anak memotivasi kompetisi positif di antara pengguna.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(207, 41, 22, 11, NULL, 'Daily Task Submission', 'Mulai terbiasa dengan alur aplikasi. Pengalaman belajar cukup menyenangkan.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(208, 41, 22, 12, NULL, 'Daily Task Submission', 'Aplikasi stabil, tidak ada crash hari ini. Semua konten bisa diakses dengan baik.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(209, 41, 22, 13, NULL, 'Daily Task Submission', 'Fitur cerita sudah sangat lengkap. Konten edukatif berkualitas tinggi untuk anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(210, 41, 22, 14, NULL, 'Daily Task Submission', 'Pengalaman 14 hari testing menyenangkan. Aplikasi sangat layak untuk anak-anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(211, 41, 23, 1, NULL, 'Daily Task Submission', 'Install lancar. Loading splash screen agak lama sekitar 4 detik, perlu dipercepat.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(212, 41, 23, 2, NULL, 'Daily Task Submission', 'Bug: tombol Next di halaman cerita kadang tidak merespons saat ditekan pertama kali, harus ditekan dua kali.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(213, 41, 23, 3, NULL, 'Daily Task Submission', 'Kuis level 3 crash ketika soal nomor 7 dijawab. Harus restart aplikasi untuk melanjutkan.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(214, 41, 23, 4, NULL, 'Daily Task Submission', 'Tombol kembali di halaman kuis tidak berfungsi, harus pakai tombol back dari HP.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(215, 41, 23, 5, NULL, 'Daily Task Submission', 'Iklan muncul di tengah-tengah sesi belajar, sangat mengganggu pengalaman anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(216, 41, 23, 6, NULL, 'Daily Task Submission', 'Aplikasi memakan RAM cukup besar, HP mid-range jadi panas setelah 15 menit pemakaian.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(217, 41, 23, 7, NULL, 'Daily Task Submission', 'Bug kritis: setelah ganti profil anak, progress belajar kembali ke nol. Sangat mengecewakan!', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(218, 41, 23, 8, NULL, 'Daily Task Submission', 'Tidak ada mode offline, semua konten butuh internet aktif. Kurang praktis untuk daerah sinyal lemah.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(219, 41, 23, 9, NULL, 'Daily Task Submission', 'Notifikasi pengingat belajar harian tidak muncul padahal sudah diaktifkan di pengaturan.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(220, 41, 23, 10, NULL, 'Daily Task Submission', 'Crash lagi di level kuis yang sama (level 3 soal 7). Bug ini konsisten dan belum diperbaiki.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(221, 41, 23, 11, NULL, 'Daily Task Submission', 'Tidak ada pilihan bahasa daerah, padahal target pengguna adalah anak-anak Indonesia.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(222, 41, 23, 12, NULL, 'Daily Task Submission', 'Ukuran file update terlalu besar (150MB), sangat boros kuota internet pengguna.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(223, 41, 23, 13, NULL, 'Daily Task Submission', 'Tombol logout tersembunyi di menu, susah ditemukan. Perlu dipindah ke tempat yang lebih jelas.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(224, 41, 23, 14, NULL, 'Daily Task Submission', 'Saran utama: segera perbaiki bug crash di kuis level 3 dan tambahkan mode offline.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(225, 41, 24, 1, NULL, 'Daily Task Submission', 'Berhasil masuk ke halaman utama. Warna-warna cerah sangat bagus dan cocok untuk anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(226, 41, 24, 2, NULL, 'Daily Task Submission', 'Menu navigasi bawah mudah dipahami dan dioperasikan oleh anak-anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(227, 41, 24, 3, NULL, 'Daily Task Submission', 'Font huruf terlalu kecil untuk anak usia 4-5 tahun, cukup susah dibaca mandiri.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(228, 41, 24, 4, NULL, 'Daily Task Submission', 'Gambar ilustrasi cerita sangat bagus, detail, dan menarik perhatian anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(229, 41, 24, 5, NULL, 'Daily Task Submission', 'Fitur reward bintang efektif memotivasi anak untuk terus belajar setiap hari.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(230, 41, 24, 6, NULL, 'Daily Task Submission', 'Kategori materi kurang lengkap, saat ini hanya ada matematika dan bahasa saja.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(231, 41, 24, 7, NULL, 'Daily Task Submission', 'UI secara keseluruhan konsisten dan enak dilihat. Tidak membingungkan pengguna baru.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(232, 41, 24, 8, NULL, 'Daily Task Submission', 'Tombol-tombol terlalu kecil untuk jari anak balita, sering terjadi salah pencet.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(233, 41, 24, 9, NULL, 'Daily Task Submission', 'Desain karakter maskot sangat menggemaskan, anak saya sangat menyukainya.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(234, 41, 24, 10, NULL, 'Daily Task Submission', 'Warna background agak terlalu gelap untuk mode malam, mata anak cepat lelah.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(235, 41, 24, 11, NULL, 'Daily Task Submission', 'Fitur sharing hasil belajar ke media sosial orang tua sangat bagus untuk apresiasi anak.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(236, 41, 24, 12, NULL, 'Daily Task Submission', 'Animasi transisi antar halaman smooth dan tidak patah-patah sama sekali.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(237, 41, 24, 13, NULL, 'Daily Task Submission', 'Aplikasi sudah jauh lebih baik dari awal testing. Perkembangan sangat positif.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(238, 41, 24, 14, NULL, 'Daily Task Submission', 'Secara keseluruhan aplikasi sangat bagus, tinggal perlu polish di beberapa bagian kecil.', NULL, 'done', '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(253, 48, 28, 1, 'task-screenshots/01M7FGXGDRCKA1934HPARWRHMK.jpg', 'Daily Task Submission', 'Terdapat bug di halaman login dengan google dan saya tidak bisa login', NULL, 'done', '2026-11-15 18:53:09', '2026-11-15 18:55:09'),
(254, 48, 28, 2, NULL, NULL, NULL, NULL, 'notdone', '2026-11-16 18:53:09', '2026-11-16 18:53:09'),
(255, 48, 28, 3, NULL, NULL, NULL, NULL, 'notdone', '2026-11-17 18:53:09', '2026-11-17 18:53:09'),
(256, 48, 28, 4, NULL, NULL, NULL, NULL, 'notdone', '2026-11-18 18:53:09', '2026-11-18 18:53:09'),
(257, 48, 28, 5, NULL, NULL, NULL, NULL, 'notdone', '2026-11-19 18:53:09', '2026-11-19 18:53:09'),
(258, 48, 28, 6, NULL, NULL, NULL, NULL, 'notdone', '2026-11-20 18:53:09', '2026-11-20 18:53:09'),
(259, 48, 28, 7, NULL, NULL, NULL, NULL, 'notdone', '2026-11-21 18:53:09', '2026-11-21 18:53:09'),
(260, 48, 28, 8, NULL, NULL, NULL, NULL, 'notdone', '2026-11-22 18:53:09', '2026-11-22 18:53:09'),
(261, 48, 28, 9, NULL, NULL, NULL, NULL, 'notdone', '2026-11-23 18:53:09', '2026-11-23 18:53:09'),
(262, 48, 28, 10, NULL, NULL, NULL, NULL, 'notdone', '2026-11-24 18:53:09', '2026-11-24 18:53:09'),
(263, 48, 28, 11, NULL, NULL, NULL, NULL, 'notdone', '2026-11-25 18:53:09', '2026-11-25 18:53:09'),
(264, 48, 28, 12, NULL, NULL, NULL, NULL, 'notdone', '2026-11-26 18:53:09', '2026-11-26 18:53:09'),
(265, 48, 28, 13, NULL, NULL, NULL, NULL, 'notdone', '2026-11-27 18:53:09', '2026-11-27 18:53:09'),
(266, 48, 28, 14, NULL, NULL, NULL, NULL, 'notdone', '2026-11-28 18:53:09', '2026-11-28 18:53:09'),
(267, 48, 29, 1, 'task-screenshots/01M7FGYVMMCDM2CZHWGT77B98W.jpg', 'Daily Task Submission', 'Halaman Login tampilannya tidak responsive di layar mobile', NULL, 'done', '2026-11-15 18:53:09', '2026-11-15 18:55:06'),
(268, 48, 29, 2, NULL, NULL, NULL, NULL, 'notdone', '2026-11-16 18:53:09', '2026-11-16 18:53:09'),
(269, 48, 29, 3, NULL, NULL, NULL, NULL, 'notdone', '2026-11-17 18:53:09', '2026-11-17 18:53:09'),
(270, 48, 29, 4, NULL, NULL, NULL, NULL, 'notdone', '2026-11-18 18:53:09', '2026-11-18 18:53:09'),
(271, 48, 29, 5, NULL, NULL, NULL, NULL, 'notdone', '2026-11-19 18:53:09', '2026-11-19 18:53:09'),
(272, 48, 29, 6, NULL, NULL, NULL, NULL, 'notdone', '2026-11-20 18:53:09', '2026-11-20 18:53:09'),
(273, 48, 29, 7, NULL, NULL, NULL, NULL, 'notdone', '2026-11-21 18:53:09', '2026-11-21 18:53:09'),
(274, 48, 29, 8, NULL, NULL, NULL, NULL, 'notdone', '2026-11-22 18:53:09', '2026-11-22 18:53:09'),
(275, 48, 29, 9, NULL, NULL, NULL, NULL, 'notdone', '2026-11-23 18:53:09', '2026-11-23 18:53:09'),
(276, 48, 29, 10, NULL, NULL, NULL, NULL, 'notdone', '2026-11-24 18:53:09', '2026-11-24 18:53:09'),
(277, 48, 29, 11, NULL, NULL, NULL, NULL, 'notdone', '2026-11-25 18:53:09', '2026-11-25 18:53:09'),
(278, 48, 29, 12, NULL, NULL, NULL, NULL, 'notdone', '2026-11-26 18:53:09', '2026-11-26 18:53:09'),
(279, 48, 29, 13, NULL, NULL, NULL, NULL, 'notdone', '2026-11-27 18:53:09', '2026-11-27 18:53:09'),
(280, 48, 29, 14, NULL, NULL, NULL, NULL, 'notdone', '2026-11-28 18:53:09', '2026-11-28 18:53:09'),
(281, 48, 30, 1, NULL, NULL, NULL, NULL, 'notdone', '2026-11-15 18:53:09', '2026-11-15 18:53:09'),
(282, 48, 30, 2, NULL, NULL, NULL, NULL, 'notdone', '2026-11-16 18:53:09', '2026-11-16 18:53:09'),
(283, 48, 30, 3, NULL, NULL, NULL, NULL, 'notdone', '2026-11-17 18:53:09', '2026-11-17 18:53:09'),
(284, 48, 30, 4, NULL, NULL, NULL, NULL, 'notdone', '2026-11-18 18:53:09', '2026-11-18 18:53:09'),
(285, 48, 30, 5, NULL, NULL, NULL, NULL, 'notdone', '2026-11-19 18:53:09', '2026-11-19 18:53:09'),
(286, 48, 30, 6, NULL, NULL, NULL, NULL, 'notdone', '2026-11-20 18:53:09', '2026-11-20 18:53:09'),
(287, 48, 30, 7, NULL, NULL, NULL, NULL, 'notdone', '2026-11-21 18:53:09', '2026-11-21 18:53:09'),
(288, 48, 30, 8, NULL, NULL, NULL, NULL, 'notdone', '2026-11-22 18:53:09', '2026-11-22 18:53:09'),
(289, 48, 30, 9, NULL, NULL, NULL, NULL, 'notdone', '2026-11-23 18:53:09', '2026-11-23 18:53:09'),
(290, 48, 30, 10, NULL, NULL, NULL, NULL, 'notdone', '2026-11-24 18:53:09', '2026-11-24 18:53:09'),
(291, 48, 30, 11, NULL, NULL, NULL, NULL, 'notdone', '2026-11-25 18:53:09', '2026-11-25 18:53:09'),
(292, 48, 30, 12, NULL, NULL, NULL, NULL, 'notdone', '2026-11-26 18:53:09', '2026-11-26 18:53:09'),
(293, 48, 30, 13, NULL, NULL, NULL, NULL, 'notdone', '2026-11-27 18:53:09', '2026-11-27 18:53:09'),
(294, 48, 30, 14, NULL, NULL, NULL, NULL, 'notdone', '2026-11-28 18:53:09', '2026-11-28 18:53:09'),
(295, 49, 28, 1, 'task-screenshots/01M7FHAWEQHZRPCMTEGP8EMQEJ.jpg', 'Daily Task Submission', 'Terdapat bug saat saya login dengan google', NULL, 'done', '2026-11-15 19:00:48', '2026-11-15 19:02:17'),
(296, 49, 28, 2, NULL, NULL, NULL, NULL, 'notdone', '2026-11-16 19:00:48', '2026-11-16 19:00:48'),
(297, 49, 28, 3, NULL, NULL, NULL, NULL, 'notdone', '2026-11-17 19:00:48', '2026-11-17 19:00:48'),
(298, 49, 28, 4, NULL, NULL, NULL, NULL, 'notdone', '2026-11-18 19:00:48', '2026-11-18 19:00:48'),
(299, 49, 28, 5, NULL, NULL, NULL, NULL, 'notdone', '2026-11-19 19:00:48', '2026-11-19 19:00:48'),
(300, 49, 28, 6, NULL, NULL, NULL, NULL, 'notdone', '2026-11-20 19:00:48', '2026-11-20 19:00:48'),
(301, 49, 28, 7, NULL, NULL, NULL, NULL, 'notdone', '2026-11-21 19:00:48', '2026-11-21 19:00:48'),
(302, 49, 28, 8, NULL, NULL, NULL, NULL, 'notdone', '2026-11-22 19:00:48', '2026-11-22 19:00:48'),
(303, 49, 28, 9, NULL, NULL, NULL, NULL, 'notdone', '2026-11-23 19:00:48', '2026-11-23 19:00:48'),
(304, 49, 28, 10, NULL, NULL, NULL, NULL, 'notdone', '2026-11-24 19:00:48', '2026-11-24 19:00:48'),
(305, 49, 28, 11, NULL, NULL, NULL, NULL, 'notdone', '2026-11-25 19:00:48', '2026-11-25 19:00:48'),
(306, 49, 28, 12, NULL, NULL, NULL, NULL, 'notdone', '2026-11-26 19:00:48', '2026-11-26 19:00:48'),
(307, 49, 28, 13, NULL, NULL, NULL, NULL, 'notdone', '2026-11-27 19:00:48', '2026-11-27 19:00:48'),
(308, 49, 28, 14, NULL, NULL, NULL, NULL, 'notdone', '2026-11-28 19:00:48', '2026-11-28 19:00:48'),
(309, 49, 29, 1, 'task-screenshots/01M7FHBQ0E40NMXR1PEDXA3RXD.jpeg', 'Daily Task Submission', 'Halaman login tidak responsive', NULL, 'done', '2026-11-15 19:00:48', '2026-11-15 19:02:17'),
(310, 49, 29, 2, NULL, NULL, NULL, NULL, 'notdone', '2026-11-16 19:00:48', '2026-11-16 19:00:48'),
(311, 49, 29, 3, NULL, NULL, NULL, NULL, 'notdone', '2026-11-17 19:00:48', '2026-11-17 19:00:48'),
(312, 49, 29, 4, NULL, NULL, NULL, NULL, 'notdone', '2026-11-18 19:00:48', '2026-11-18 19:00:48'),
(313, 49, 29, 5, NULL, NULL, NULL, NULL, 'notdone', '2026-11-19 19:00:48', '2026-11-19 19:00:48'),
(314, 49, 29, 6, NULL, NULL, NULL, NULL, 'notdone', '2026-11-20 19:00:48', '2026-11-20 19:00:48'),
(315, 49, 29, 7, NULL, NULL, NULL, NULL, 'notdone', '2026-11-21 19:00:48', '2026-11-21 19:00:48'),
(316, 49, 29, 8, NULL, NULL, NULL, NULL, 'notdone', '2026-11-22 19:00:48', '2026-11-22 19:00:48'),
(317, 49, 29, 9, NULL, NULL, NULL, NULL, 'notdone', '2026-11-23 19:00:48', '2026-11-23 19:00:48'),
(318, 49, 29, 10, NULL, NULL, NULL, NULL, 'notdone', '2026-11-24 19:00:48', '2026-11-24 19:00:48'),
(319, 49, 29, 11, NULL, NULL, NULL, NULL, 'notdone', '2026-11-25 19:00:48', '2026-11-25 19:00:48'),
(320, 49, 29, 12, NULL, NULL, NULL, NULL, 'notdone', '2026-11-26 19:00:48', '2026-11-26 19:00:48'),
(321, 49, 29, 13, NULL, NULL, NULL, NULL, 'notdone', '2026-11-27 19:00:48', '2026-11-27 19:00:48'),
(322, 49, 29, 14, NULL, NULL, NULL, NULL, 'notdone', '2026-11-28 19:00:48', '2026-11-28 19:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `fee` decimal(15,2) NOT NULL,
  `desc` text DEFAULT NULL,
  `most_popular` tinyint(1) NOT NULL DEFAULT 0,
  `point` int(11) NOT NULL DEFAULT 0,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `trusted_badge` tinyint(1) NOT NULL DEFAULT 0,
  `ai_report` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `name`, `short_desc`, `price`, `fee`, `desc`, `most_popular`, `point`, `aktif`, `trusted_badge`, `ai_report`, `created_at`, `updated_at`) VALUES
(4, 'Paket Biasa', '', 300000.00, 5000.00, '<ul><li><p>Jadi sksksks</p></li><li><p>sijshwisswdhd</p><p>jdhejdejhde</p></li></ul>', 0, 150, 1, 0, 0, '2026-05-01 12:37:00', '2026-06-08 07:45:40'),
(5, 'Paket Premium', '', 500000.00, 10000.00, '<p>hsjhdjshdjshdjshdjds</p>', 1, 200, 1, 1, 1, '2026-05-01 12:38:06', '2026-06-08 07:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_admin` bigint(20) UNSIGNED DEFAULT NULL,
  `id_paket` bigint(20) UNSIGNED DEFAULT NULL,
  `id_misi` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `payment_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `image`, `status`, `id_user`, `id_admin`, `id_paket`, `id_misi`, `created_at`, `updated_at`, `reference`, `payment_url`) VALUES
(12, 'bukti-pembayaran/01KQHS03141CG8SQXGA7AFV7BF.jpeg', 'success', 6, 1, 4, NULL, '2026-05-01 12:42:41', '2026-05-01 12:45:13', NULL, NULL),
(13, 'bukti-pembayaran/01KQHST2BWJDN3P6PTQHE7T9KF.jpeg', 'success', 6, 1, 4, NULL, '2026-05-01 12:56:52', '2026-05-01 12:57:13', NULL, NULL),
(14, 'bukti-pembayaran/01KQHV3D79JM36Q6PWHQMX9DG3.jpeg', 'success', 6, 1, 5, NULL, '2026-05-01 13:19:27', '2026-05-01 13:37:01', NULL, NULL),
(15, 'bukti-pembayaran/01KRA8PQH8MJ5BP59RQRVPVYED.png', 'success', 6, 1, 4, NULL, '2026-05-11 00:58:58', '2026-05-11 01:00:24', NULL, NULL),
(16, NULL, 'pending', 6, NULL, 4, NULL, '2026-05-18 01:42:57', '2026-05-18 01:42:57', NULL, NULL),
(17, NULL, 'pending', 6, NULL, 4, NULL, '2026-05-18 01:49:08', '2026-05-18 01:49:08', NULL, NULL),
(18, NULL, 'rejected', 6, NULL, 4, NULL, '2026-05-18 01:57:21', '2026-05-18 02:02:20', NULL, NULL),
(19, NULL, 'accepted', 6, NULL, 4, NULL, '2026-05-18 02:05:02', '2026-05-18 02:12:24', NULL, NULL),
(20, NULL, 'pending', 2, NULL, 4, NULL, '2026-05-24 06:33:51', '2026-05-24 06:33:51', 'MISI-23-1779604428', 'https://kr9bp.app.link/pay?bizNo=20260524111212800110166297202619242&timestamp=1779604432116&originSourcePlatform=IPG&mid=216620000000887246413&did=216650000000992314417&sid=216660000000992318418&sign=Uoq5Gws7NJYKEb%2FkOXeb%2BxLbW9HFM86vNyB4yg00BEw3Jhq7c%2FdSSxMbHRXc5FjkE6dyyz0D78vGhgu0eYqIFbSXiYbywx95ptvMM26o%2FQhw4zQw56oVAMZRKzra7UaahiSfMo%2BELAZJFomLgWUjoZO4pMb%2Ftla7STjE%2Bpb%2Fy05nKFVc6%2F%2FfzeTL0jXDCGhRDd3lv8oVzMMHxSax80dyzLQWsqqvdkejEesKXzk1%2FJpQPvSRCVqG2n1QjsIBd3AAJODMORRJLN8tLBJGbuRGfdXl3XRMcKRoPfTmSVOzMJe1tjaVytae9u5djQMfF%2FVPwIPE%2FAht3hogD9UYRCxipA%3D%3D&forceToH5=false&newRegistrationPage=true'),
(21, NULL, 'accepted', 2, NULL, 4, NULL, '2026-05-24 06:39:31', '2026-05-24 06:44:38', 'MISI-24-1779604769', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR2668FOMK067HNTDQ7'),
(22, NULL, 'pending', 2, NULL, 5, NULL, '2026-05-24 06:47:41', '2026-05-24 06:47:41', 'MISI-25-1779605258', 'https://kr9bp.app.link/pay?bizNo=20260524111212800110166191502614619&timestamp=1779605262165&originSourcePlatform=IPG&mid=216620000000887246413&did=216650000000992314417&sid=216660000000992318418&sign=hFrK1QN83W368jfMzLgw3WZF%2BhNeXKaIMwWBfimET%2B1LU2Sta8sUeRsFo7u47E3WucLEuUUsJbtH8kK0Ztf0nYAXdw6K4u1jsz8eIKx5UBizA5bRb85nNqlQ5TatlysMVfwaplbLRi5NxWCSssfI8Wza2CustK5VStkayPW%2BgCO8X8SLa4SOcVFve6h3iDESqQPc0zOfevk9draJIytRkl0KK4mm3Ktc2xfAj%2Bi7yDtk3FnGxAnOK7e4aoxp%2FyD9oXP8jAWMaJirf263m7Q0y5cESdwWhc8cPeSy7a83bhHrfGcy8z3n9FcMRWBGRWbPJeihYh9KPPixnkrhqK122A%3D%3D&forceToH5=false&newRegistrationPage=true'),
(23, NULL, 'accepted', 2, NULL, 5, NULL, '2026-05-24 07:36:45', '2026-05-24 07:38:18', 'MISI-26-1779608204', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426N1AA0CDGCNBX1O8'),
(24, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-02 00:40:27', '2026-06-02 00:42:08', 'MISI-27-1780360826', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426WZM1FRFAMF26EZY'),
(25, NULL, 'pending', 2, NULL, 5, NULL, '2026-06-02 01:18:45', '2026-06-02 01:18:45', 'MISI-28-1780363124', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426YIHNG2IUH32HIGQ'),
(26, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-02 01:21:45', '2026-06-02 01:23:02', 'MISI-29-1780363304', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426LES48ZO8W7SN311'),
(27, NULL, 'accepted', 2, NULL, 4, NULL, '2026-06-05 14:23:58', '2026-06-05 14:24:47', 'MISI-30-1780644238', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BC26UVYS1X5R642WM4G'),
(28, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-05 14:41:32', '2026-06-05 14:42:39', 'MISI-31-1780645291', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426VZAXEYRHZMOZN0N'),
(29, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-08 06:20:41', '2026-06-08 06:22:06', 'MISI-32-1780874441', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426E7QRD3LMLZ6YVBT'),
(30, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-08 06:35:44', '2026-06-08 06:36:13', 'MISI-33-1780875343', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426P5NZTY5GIY0VC0C'),
(31, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-08 06:58:16', '2026-06-08 06:58:47', 'MISI-34-1780876695', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426UAZ8VXB2IN1MBSK'),
(32, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-08 07:03:58', '2026-06-08 07:04:52', 'MISI-35-1780877038', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS30764268BCSXLRKL1UYLK5'),
(33, NULL, 'accepted', 2, NULL, 4, NULL, '2026-06-08 07:22:09', '2026-06-08 07:22:43', 'MISI-36-1780878128', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BC26UHA45BGENY4IEYO'),
(34, NULL, 'accepted', 2, NULL, 5, NULL, '2026-06-08 07:38:44', '2026-06-08 07:42:02', 'MISI-37-1780879123', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426U0W1IVHNEHPL5HO'),
(35, NULL, 'accepted', 16, NULL, 5, NULL, '2026-06-08 09:04:05', '2026-06-08 09:05:07', 'MISI-38-1780884244', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426KAF2LY16VYSOJMV'),
(36, NULL, 'accepted', 18, NULL, 4, NULL, '2026-06-08 10:02:47', '2026-06-08 10:03:22', 'MISI-39-1780887767', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BC26FU86CURVFC5WCN2'),
(37, NULL, 'accepted', 16, NULL, 5, 40, '2026-06-09 08:40:16', '2026-06-09 08:41:21', 'MISI-40-1780969215', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426BBQ36I0NVJ2S04B'),
(38, NULL, 'accepted', 18, NULL, 5, 41, '2026-06-09 02:02:02', '2026-06-09 02:02:02', 'DEMO-EDUKID-2026', NULL),
(39, NULL, 'accepted', 18, NULL, 5, 42, '2026-06-09 09:16:12', '2026-06-09 09:17:07', 'MISI-42-1780971372', 'https://sandbox.duitku.com/topup/v2/TopUpCreditCardPayment.aspx?reference=DS3076426AL4BSJSQIZQ7ETK'),
(45, NULL, 'accepted', 2, NULL, 4, 48, '2026-11-15 18:48:45', '2026-11-15 18:52:17', 'MISI-48-1794743325', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26G3FXX7DJH7V2BVD'),
(46, NULL, 'accepted', 2, NULL, 5, 49, '2026-11-15 18:56:22', '2026-11-15 18:56:49', 'MISI-49-1794743781', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR267JW7GJP4JWGDYN6'),
(47, NULL, 'accepted', 2, NULL, 5, 50, '2026-11-16 13:09:06', '2026-11-16 13:09:43', 'MISI-50-1794809345', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26MYHEEFZGVKETZ2K'),
(48, NULL, 'accepted', 2, NULL, 5, 51, '2026-11-16 14:30:38', '2026-11-16 14:37:21', 'MISI-51-1794814237', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26VWJGNOGIJH2JS6X'),
(49, NULL, 'accepted', 2, NULL, 5, 52, '2026-11-16 14:41:15', '2026-11-16 14:56:28', 'MISI-52-1794814874', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26TMFAZHIDDAMRFB5'),
(50, NULL, 'accepted', 2, NULL, 4, 53, '2026-11-16 15:04:42', '2026-11-16 15:19:57', 'MISI-53-1794816281', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26AHUSU4S2UUT0OP3'),
(51, NULL, 'accepted', 2, NULL, 4, 54, '2026-11-16 15:24:39', '2026-11-16 15:28:17', 'MISI-54-1794817478', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26XP50TO8PDDK04V6'),
(52, NULL, 'pending', 2, NULL, 5, 55, '2026-11-16 15:30:27', '2026-11-16 15:30:27', 'MISI-55-1794817826', 'https://sandbox.duitku.com/topup/topupdirectv2.aspx?ref=BR26Y10G5YQSKK0AEAO');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Jj9uisbHOWq8WFvq15yT0rdFhlGYcZeeM6tNXsX', 1, '114.10.155.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI3WFFxcldKbldTY1VYUFA3N3FhMU1oSXVETkhZR0t1VmMyNXJkemU2IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjEsInBhc3N3b3JkX2hhc2hfd2ViIjoiZTU5NWY2NTAyOTY0MGI2MzYyZjIyM2QwY2JlNDJlYjMwMmU5NzUwNGUyYjllOGU0YzY0YmJhYzNmMTNhNWVmYiIsInRhYmxlcyI6eyJjYTRlZGU5ODY4YmViYzNlYWFjMDJiMDI4MDliZGVjY19jb2x1bW5zIjpbeyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6Im5hbWUiLCJsYWJlbCI6Ik5hbWEgUGFrZXQiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoic2hvcnRfZGVzYyIsImxhYmVsIjoiU3VidGl0bGUiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoicHJpY2UiLCJsYWJlbCI6IkhhcmdhIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6ImZlZSIsImxhYmVsIjoiRmVlIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6InBvaW50IiwibGFiZWwiOiJQb2luIFJld2FyZCIsImlzSGlkZGVuIjpmYWxzZSwiaXNUb2dnbGVkIjp0cnVlLCJpc1RvZ2dsZWFibGUiOmZhbHNlLCJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiOm51bGx9LHsidHlwZSI6ImNvbHVtbiIsIm5hbWUiOiJtb3N0X3BvcHVsYXIiLCJsYWJlbCI6IlRlcnBvcHVsZXIiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfSx7InR5cGUiOiJjb2x1bW4iLCJuYW1lIjoiYWt0aWYiLCJsYWJlbCI6IkFrdGlmIiwiaXNIaWRkZW4iOmZhbHNlLCJpc1RvZ2dsZWQiOnRydWUsImlzVG9nZ2xlYWJsZSI6ZmFsc2UsImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI6bnVsbH0seyJ0eXBlIjoiY29sdW1uIiwibmFtZSI6InRydXN0ZWRfYmFkZ2UiLCJsYWJlbCI6IlRydXN0ZWQgQmFkZ2UiLCJpc0hpZGRlbiI6ZmFsc2UsImlzVG9nZ2xlZCI6dHJ1ZSwiaXNUb2dnbGVhYmxlIjpmYWxzZSwiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjpudWxsfV19fQ==', 1794817036),
('5giFf5XuleGX8T4BrxcaAdAmmXcZ9hdHNTb4DcF1', NULL, '36.50.157.20', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJDWExJeldDQ2F5UWVMdjRySU5ITFY1MGdoRkE2SUVHMzJ5aFNXNVNFIiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794820332),
('a0Y5gu3Wzma8u8xYV1GfGM5xVdteoc2a1GAqoaba', NULL, '205.169.39.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'eyJfdG9rZW4iOiJrY2EzeG01U1NVYTRPdVVLTDlQTzJVR051bVJuVnBCMllxckpGTHVJIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2VuIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794811685),
('azFgeVdEwYWs7tC5Rv5ZPcD5VHAd8Zvi3WFnKQZt', NULL, '182.3.33.133', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJmUTY3VXRCZ1ZGd05GQmdHVjdHbGxhUU03dkc0eHRTRmM5YkVBV1pQIiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794820333),
('BiMp6H6Jfs1pmjos0pSKiXeEQipvu176rHqUz1Il', NULL, '34.90.247.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJOUFVLOVBVR2hxVXpoNllDcm9CYU0xZ2pnZHd3Yk9DR0ZCZHdjTWdZIiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWQiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794822712),
('boVyEz5XCn9TVZ8PUYTWcEDEJ57NT64iCRL96Zqh', NULL, '114.8.219.106', 'WhatsApp/2.23.20.0', 'eyJfdG9rZW4iOiJUYm10ZzlZQVVlODQ5aU5ZcGdQUEJaQnJHQ3hMaFZleEI3bGN6amI5IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2FkbWluXC9sb2dpbiIsInJvdXRlIjoiZmlsYW1lbnQuYWRtaW4uYXV0aC5sb2dpbiJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1794825150),
('cDJ0uqYVUO4yMijEWRPpcZlw1z71IWHO4B7by2QK', NULL, '152.32.128.85', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/577.46 (KHTML, like Gecko) Chrome/79.0.76 Safari/537.36', 'eyJfdG9rZW4iOiJoUEZyMHIza3Vna0JmZVBVcnpHNXluRlJ6TnNXTDl5TTREZ1ZYZUg4IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794810157),
('EEcIx54XyuIuE1LgD7SsjpQq6408sWdthIMpsdmK', NULL, '103.177.101.188', 'Duitku Callback Agent', 'eyJfdG9rZW4iOiJ1am1vdW12WVZSYXpndXFPSDRKY25rbjNqN3NxU3FEQUtMVFl4T0JzIiwiYXBwX2xvY2FsZSI6ImlkIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794814641),
('ekmFbuEsEv6yfGPt3JbXK3zeLegQezOEIdGh9i6o', NULL, '52.89.130.89', 'axios/1.10.0', 'eyJfdG9rZW4iOiJRRkRpY2hWd0NqRGhMcWdQWDREVUxrRW0xN25XaTRhM1lXaTRsRGw5IiwiYXBwX2xvY2FsZSI6ImlkIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794816117),
('gIN9GwbkOByGIGNTBl9l8ByjuZ6ridCoAbQa0Ldo', NULL, '103.177.101.188', 'Duitku Callback Agent', 'eyJfdG9rZW4iOiJJWnNpWDRsTDFuZHNrcmZlZVlLNVdVREJ2Q1FXbHBvd3JYRko3cHhaIiwiYXBwX2xvY2FsZSI6ImlkIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794815788),
('gzOpIlIQZ2iHidItxoXq5lCzv7eyg31g2eTFOpCo', NULL, '205.169.39.201', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'eyJfdG9rZW4iOiJrWU1NaGZyeEkyN01YY3hwdjJRekFSUVF0U0Z0bktVOEEzWHByc1ZWIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2VuIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794811677),
('hCDGs7XVLwqaUzZDWO18jGMcXdZyBs3l7DXMCTfF', NULL, '44.204.251.120', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/126.0 Safari/537.36', 'eyJfdG9rZW4iOiI4SmRoNHhDNGxoSFlkQzBnbThZV1lHaGpiYnh3eWw1NVpvVm00MzhUIiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWQiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794810512),
('ILPRU61fIoKzgOwO0IfQAuzqlmVQmmUWaBLD3pBK', 28, '114.10.155.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJKYW9IZjdvanRFUUJ3c0NlejZpRnMwSzI5TGpKY3I1RTB5dTZBeUJaIiwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjI4LCJwYXNzd29yZF9oYXNoX3dlYiI6Ijg2MTUxOTNiZjE4NTdiMGVjOWRiMjgzMmQ4ZjNmZTFlYzI4ODYwMzY5MDA2YWU3MTQwMDUzODEyYmFjYzg1MDYiLCJhcHBfbG9jYWxlIjoiZW4iLCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3Rlc3RvcGxheS5teS5pZFwvdGVzdGVyXC9taXNpLXNheWEiLCJyb3V0ZSI6ImZpbGFtZW50LnRlc3Rlci5wYWdlcy5taXNpLXNheWEifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJmaWxhbWVudCI6W119', 1794817230),
('iP64BmPwhwj9RCgcH4iOrE1ryur1Z2sj723skV8t', NULL, '20.119.215.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJoYktGMGVVUU5FOGRtZkhKZEs5Z1lLZXAxQ2hROVo3c3lUbXlqMUFwIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2VuIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794819427),
('Jh04Vd3zdud14LSxrWdu0dRZOqnRy6KOLSYY9WSM', NULL, '103.177.101.188', 'Duitku Callback Agent', 'eyJfdG9rZW4iOiJZcW9OQ0pPNGxDeGJkbDhUS2hyV2JmeDhyWlI0bXhvWXJ6Z2ZaWGw3IiwiYXBwX2xvY2FsZSI6ImlkIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794817697),
('jiMbLlQwlf6t0nplHGrCFogjE9LUYRbh4fkkMgNX', 2, '114.10.155.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI3cHdyQzBwdk1xNkp5VFliOWJaeWNxU3A1RzhBdExHQ2lCeDhWTmt0IiwiYXBwX2xvY2FsZSI6ImlkIiwidXJsIjpbXSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3Rlc3RvcGxheS5teS5pZFwvZGV2ZWxvcGVyXC9taXNpc1wvY3JlYXRlIiwicm91dGUiOiJmaWxhbWVudC5kZXZlbG9wZXIucmVzb3VyY2VzLm1pc2lzLmNyZWF0ZSJ9LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MiwicGFzc3dvcmRfaGFzaF93ZWIiOiJlNTk1ZjY1MDI5NjQwYjYzNjJmMjIzZDBjYmU0MmViMzAyZTk3NTA0ZTJiOWU4ZTRjNjRiYmFjM2YxM2E1ZWZiIiwiZmlsYW1lbnQiOnsiY2xhaW1lZF9ub3RpZmljYXRpb25zIjpbeyJpZCI6ImEzM2NkYmU3LWVkMDgtNDZhMS04ZTcwLTM1N2YzMjNmNmU2MCIsImFjdGlvbnMiOltdLCJib2R5IjpudWxsLCJjb2xvciI6bnVsbCwiZHVyYXRpb24iOjYwMDAsImljb24iOiJoZXJvaWNvbi1vLWNoZWNrLWNpcmNsZSIsImljb25Db2xvciI6InN1Y2Nlc3MiLCJzdGF0dXMiOiJzdWNjZXNzIiwidGl0bGUiOiJEYXRhIGJlcmhhc2lsIGRpYnVhdCIsInZpZXciOm51bGwsInZpZXdEYXRhIjpbXX1dfX0=', 1794817936),
('jXfSefCECODZNw1KyoNJX6iOI6iUbmTTk1fUDymW', NULL, '20.119.215.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI2Qnl6QjVkZ09zb0tHb1hEVEVwVUFmN0cydDQwejNndkVWSm9qZlNZIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWQiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794819425),
('kxK2MQdQ6RX18aVUhZPFiArl7j29SmFnS1hK2zX6', NULL, '20.119.215.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ1REc0enFHSmFDQ0VsU2JPTFl6UGxzcXBhSXR1NEhHdmVQSXVGSTlaIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2VuIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794819430),
('NryW2x2KnD2dBxcJBVxAdlHPOfsy0MOeh450UR1r', NULL, '152.32.128.85', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 8_2_1) AppleWebKit/549.45 (KHTML, like Gecko) Chrome/105.0.1461 Safari/537.36', 'eyJfdG9rZW4iOiJnRHFhVXE5bWk1TjBUem9NeUh3Y1l2NVhDZ1FvTG9xRDhtNzFNeGh1IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWQiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794810152),
('O5IzD4Y7wo2lk4JuImw6rdvKsJPWkO31jUA3QVo2', NULL, '34.122.147.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.60 Safari/537.36 Edge/12.246', 'eyJfdG9rZW4iOiJpUDdVSFNxbnFOUzBycnFwNnB4T3VXa2FDNTE5a3BSUG1ZSGRocHk3IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794811647),
('OeTPjkCLXvbFwgj8yLO4uwv53yzBZtkA5aqwmkwO', NULL, '104.28.228.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ3cHdCbnA5aXZPejdSd3BpbXJRNGl6VW9JRjgzRFNXVFdSYzM0SnpIIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2VuIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794816669),
('ofPhLi2ekACWF5o6ABWBBDsKt6YLT4lxzzxdaVhG', NULL, '44.204.251.120', 'Mozilla/5.0 (Mac OS X 13_2) AppleWebKit/537.36 (KHTML, like Gecko) Safari/108.0 Safari/537.36', 'eyJfdG9rZW4iOiJJZjFBWjl0MXhUMkhWMkFUS1dZSUZrR0VGSHdMSFAwOW1lVjVEcWo2IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL3Rlc3RvcGxheS5teS5pZCIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794810515),
('qbzNaNH5FNVQZ53Ho37eiNCwAsgkFfidm4FpOA1g', NULL, '104.28.228.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJjZDlFcE9nWUZRMVFnaWU2OFFrNWxqQmJ1VnNWT2xMMXQ2djcyTWdlIiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWQiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794816667),
('qDxtqRKY1ujEqcD922KrxsJLvJIgUypOMbrW7F84', NULL, '34.72.176.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.60 Safari/537.36 Edge/12.246', 'eyJfdG9rZW4iOiJicGhQdVhoZTNCNnlXTWs2ejBva0RnenpxRGxZVzFuTjBXNVNySG1SIiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794811671),
('qrd02PoFkO41rUI3SZn0SYUUMScrFZKZlU0CbCly', NULL, '103.177.101.188', 'Duitku Callback Agent', 'eyJfdG9rZW4iOiJVMnBGMTg3M2NUb29TYVJMaFFCYVNHdHNHQjhCdVZzVU5oWlJIY0tNIiwiYXBwX2xvY2FsZSI6ImlkIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794817197),
('tnazAVr8mFtpWzZbasQz5NMKplDNX6sONYK5PrGS', NULL, '20.119.215.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJGeXRZV1JPSGtpeVVmN1NRS0RmSzNnT3AydklqWEYzeUpjVFM2V1Q0IiwiYXBwX2xvY2FsZSI6ImVuIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL3Rlc3RvcGxheS5teS5pZCIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1794819428),
('V6wiBT9SwvBXCWESiWu9jUyIifU3Xd33qcrJKW6J', NULL, '158.140.163.17', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Mobile Safari/537.36', 'eyJfdG9rZW4iOiJCVW9aS2F5U0FNVmg5VUVqVnFwMEFZMTJvTzZhM3pIeHlSdlVTVzN4IiwiYXBwX2xvY2FsZSI6ImlkIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC90ZXN0b3BsYXkubXkuaWRcL2lkIiwicm91dGUiOiJ3ZWxjb21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1794820328);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$12$qWpmaMUGH3GH6ejs805cluCSkuLNkIXbgG3mXrzcJEUQAukTdPeam', 'admin', NULL, '2026-04-09 06:04:02', '2026-04-09 06:04:02'),
(2, 'developer', 'developer@gmail.com', NULL, NULL, '$2y$12$qWpmaMUGH3GH6ejs805cluCSkuLNkIXbgG3mXrzcJEUQAukTdPeam', 'developer', NULL, '2026-04-09 07:26:42', '2026-04-09 07:26:42'),
(6, 'developer', 'developer2@gmail.com', NULL, NULL, '$2y$12$.UpQi9zwUfrcqvUmCbamYeDE4tNEPNkmsk8Xdl6EI1G66XPNPirB2', 'developer', NULL, '2026-04-13 17:34:57', '2026-04-13 17:34:57'),
(8, 'Wahda Adella', 'tester@gmail.com', NULL, NULL, '$2y$12$.UpQi9zwUfrcqvUmCbamYeDE4tNEPNkmsk8Xdl6EI1G66XPNPirB2', 'tester', NULL, '2026-04-26 07:16:53', '2026-04-26 07:16:53'),
(9, 'Wahda', 'wahdaadella@gmail.com', NULL, NULL, '$2y$12$km0Dty06AUilqLNCF5/eE.s8ltIJEztpq4KSuEW9XHlCRFMIjA8Q6', 'tester', NULL, '2026-05-01 13:15:00', '2026-05-01 13:15:00'),
(14, 'tester', 'chocopufff10@gmail.com', NULL, '2026-06-08 08:04:47', '$2y$12$.UpQi9zwUfrcqvUmCbamYeDE4tNEPNkmsk8Xdl6EI1G66XPNPirB2', 'developer', 'pkdjj44agLsPBFDvGDnSkAx9GaYU0Ikwri48YmPuzSfyg8BkPeqViSI4zcK7', '2026-06-08 08:04:47', '2026-06-08 08:04:47'),
(15, 'tester', 'chocopufff9@gmail.com', NULL, '2026-06-08 08:08:40', '$2y$12$qWpmaMUGH3GH6ejs805cluCSkuLNkIXbgG3mXrzcJEUQAukTdPeam', 'tester', '86FM92TNZMwcs9dk8r8BYLUS0MNOwUJ66woQCVx4QfQDrUBevJi2sBrPYrvj', '2026-06-08 08:08:40', '2026-11-15 13:33:12'),
(16, 'PlayTest ID', 'playtestid6@gmail.com', '100179469942623982430', '2026-06-08 08:54:15', '$2y$12$OOjacfoUjL/VcH5y6PRSQuY08.1pMi4ak7lvsJsSCnTIbZ2yw3S4W', 'admin', NULL, '2026-06-08 08:54:15', '2026-06-08 08:54:15'),
(17, 'Computer Name', 'namecomputer10@gmail.com', '115855188434030144994', '2026-06-08 08:54:59', '$2y$12$hG1kPZ0x9ICKGpA.wBkFw.y1oBWy9EwbspCD0OLLjml0sR5BWm3zm', 'developer', NULL, '2026-06-08 08:54:59', '2026-06-08 08:54:59'),
(18, '29_Rakagali Resda', 'rakaesal@gmail.com', '100787731903979054662', '2026-06-08 09:44:05', '$2y$12$.UpQi9zwUfrcqvUmCbamYeDE4tNEPNkmsk8Xdl6EI1G66XPNPirB2', 'developer', NULL, '2026-06-08 09:44:05', '2026-06-08 09:44:05'),
(19, 'Choco Puff', 'chocopufff6@gmail.com', '103820171972478518059', '2026-06-08 09:52:12', '$2y$12$xlnWM2kyrLDAWGO//od4POy/RDH2NSEA1AV1ua0hK3DC.rhmoDn92', 'developer', NULL, '2026-06-08 09:52:12', '2026-06-08 09:52:12'),
(20, 'Faesal Gali', 'faesalgali@gmail.com', '103217678078366785531', '2026-06-08 09:54:52', '$2y$12$FKppGkcBb3VO/jvMLdo6XuFJq.JFjPQ0DYnFQvnrf0yOYceukXeSe', 'tester', NULL, '2026-06-08 09:54:52', '2026-06-08 09:54:52'),
(22, 'Tester Demo 1', 'testerdemo1@playtest.id', NULL, '2026-06-09 02:02:02', '$2y$12$Toh8APoZWTf5iUtf5ehRbeQWyVbywVwh7.ZwioMSSGPiLUnktFbTy', 'tester', NULL, '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(23, 'Tester Demo 2', 'testerdemo2@playtest.id', NULL, '2026-06-09 02:02:02', '$2y$12$JAxsoi/fUIXrYu9bKsLsa.EKdpOnSOctsI0N58hzuNSEk7hiHg7qi', 'tester', NULL, '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(24, 'Tester Demo 3', 'testerdemo3@playtest.id', NULL, '2026-06-09 02:02:02', '$2y$12$5v2M9BnlEw1.1rIu5r3f6O.73Y8.M0TO8FeYYrcdiWbIo0h9eRaE2', 'tester', NULL, '2026-06-09 02:02:02', '2026-06-09 02:02:02'),
(26, 'Wahda', 'chocopufff5@gmail.com', NULL, '2026-06-09 09:50:34', '$2y$12$iBANnoUoVz4hu3lTULeaTegSJ80ELps9D0Bmf.U0vXlUcbirD5P8a', 'tester', '2WupoNKHHVD6BsYgNuXerr7BrZzJycoIel3ZUltdfBiftC0zunnL3A0Htq4W', '2026-06-09 09:50:34', '2026-06-09 09:50:34'),
(28, 'Tester1', 'chocopufff1@gmail.com', NULL, '2026-11-15 18:41:49', '$2y$12$dJNQXgz.QZbnYfSi1xi.meNk/b/d.BHg4/bPUCAPL9tARbVCu5R2q', 'tester', 'L1P4L7SVSsmiKdusto388GyfBENyjRgFS8MKjQmBOZFPMFNHrYnY8ZpC6aoc', '2026-11-15 18:41:49', '2026-11-15 18:41:49'),
(29, 'Tester2', 'chocopufff2@gmail.com', NULL, '2026-11-15 18:44:54', '$2y$12$bZJDjX/maR1Z.EAq3/vULOQs4Q42/VgJ1YXxFZAEo6oGNfNB8RCIy', 'tester', 'twEWUMlKSp8zkv8CQowI5zxIKxBFC9V5ZG56UI9agw7NBJqpuIHvNR1jimzy', '2026-11-15 18:44:54', '2026-11-15 18:44:54'),
(30, 'tester3', 'chocopufff3@gmail.com', NULL, '2026-11-15 18:47:21', '$2y$12$W2/7feC17hBTJ2G4GSUfT.nbqeG6x1tdxiwGfnIXs/ECk9lHh8sxe', 'tester', 'MUgv6JrS3O3myLNnS3Y3wjAaqRI1FepOTbN5cW6uxnnPt9tjLQcX8ogT63BT', '2026-11-15 18:47:21', '2026-11-15 18:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_balance`
--

CREATE TABLE `user_balance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `badge` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_balance`
--

INSERT INTO `user_balance` (`id`, `id_user`, `point`, `badge`, `created_at`, `updated_at`) VALUES
(1, 8, 9999699, 10, '2026-04-26 07:16:53', '2026-06-08 07:37:51'),
(3, 9, 80, 50, '2026-05-01 13:15:00', '2026-05-08 08:20:12'),
(8, 15, 9999699, 50, '2026-06-08 08:08:40', '2026-11-15 14:54:41'),
(9, 20, 0, 0, '2026-06-08 09:54:52', '2026-06-08 09:54:52'),
(11, 22, 15000, 2, '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(12, 23, 15000, 1, '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(13, 24, 15000, 3, '2026-06-09 02:02:02', '2026-06-09 09:02:34'),
(14, 26, 0, 0, '2026-06-09 09:50:35', '2026-06-09 09:50:35'),
(15, 28, 999849, 6, '2026-11-15 18:41:49', '2026-11-16 14:57:58'),
(16, 29, 999999, 6, '2026-11-15 18:44:54', '2026-11-15 18:44:54'),
(17, 30, 999999, 0, '2026-11-15 18:47:21', '2026-11-15 18:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_admin` bigint(20) UNSIGNED DEFAULT NULL,
  `point` int(11) NOT NULL,
  `rupiah` int(11) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `nomor_akun` varchar(255) NOT NULL,
  `xendit_payout_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('pending','success','rejected') NOT NULL DEFAULT 'pending',
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `id_user`, `id_admin`, `point`, `rupiah`, `metode`, `nomor_akun`, `xendit_payout_id`, `image`, `status`, `catatan`, `created_at`, `updated_at`) VALUES
(18, 8, NULL, 150, 10000, 'gopay', '0895630887958', 'disb-4e17d003-a9f5-428a-b28d-88d8a4dcbeb5', NULL, 'success', 'Withdrawal completed via Xendit webhook callback.', '2026-06-08 07:37:51', '2026-06-08 07:39:59'),
(21, 15, NULL, 150, 10000, 'gopay', '08151515155555', NULL, NULL, 'rejected', 'Gagal memproses via Xendit: No API Key detected. Please provide your API key in the Authorization header, using Basic auth (e.g. Authorization: Basic YOUR_SECRET_KEY). See https://developers.xendit.co/api-reference/#authentication for details', '2026-11-15 13:39:31', '2026-11-15 13:39:32'),
(23, 15, NULL, 150, 10000, 'gopay', '0815151515155', 'disb-6f285f89-7749-486c-9609-0016800ce546', NULL, 'success', 'Withdrawal completed via Xendit webhook callback.', '2026-11-15 14:54:41', '2026-11-15 14:55:57'),
(24, 28, NULL, 150, 10000, 'gopay', '081511111', 'disb-19ec3b1e-5643-4988-927b-5ffbc0e6133b', NULL, 'success', 'Withdrawal completed via Xendit webhook callback.', '2026-11-16 14:57:58', '2026-11-16 15:01:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_reports`
--
ALTER TABLE `ai_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_reports_id_misi_foreign` (`id_misi`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `misi_id_user_foreign` (`id_user`),
  ADD KEY `misi_id_paket_foreign` (`id_paket`);

--
-- Indexes for table `misi_anggota`
--
ALTER TABLE `misi_anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `misi_anggota_id_misi_foreign` (`id_misi`),
  ADD KEY `misi_anggota_id_user_foreign` (`id_user`);

--
-- Indexes for table `misi_sub`
--
ALTER TABLE `misi_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `misi_sub_id_misi_foreign` (`id_misi`),
  ADD KEY `misi_sub_id_user_foreign` (`id_user`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_id_user_foreign` (`id_user`),
  ADD KEY `pembayaran_id_admin_foreign` (`id_admin`),
  ADD KEY `pembayaran_id_paket_foreign` (`id_paket`),
  ADD KEY `pembayaran_id_misi_foreign` (`id_misi`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activity_id_user_foreign` (`id_user`);

--
-- Indexes for table `user_balance`
--
ALTER TABLE `user_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_balance_id_user_foreign` (`id_user`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_id_user_foreign` (`id_user`),
  ADD KEY `withdraw_id_admin_foreign` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_reports`
--
ALTER TABLE `ai_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `misi`
--
ALTER TABLE `misi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `misi_anggota`
--
ALTER TABLE `misi_anggota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `misi_sub`
--
ALTER TABLE `misi_sub`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_balance`
--
ALTER TABLE `user_balance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_reports`
--
ALTER TABLE `ai_reports`
  ADD CONSTRAINT `ai_reports_id_misi_foreign` FOREIGN KEY (`id_misi`) REFERENCES `misi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `misi`
--
ALTER TABLE `misi`
  ADD CONSTRAINT `misi_id_paket_foreign` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `misi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `misi_anggota`
--
ALTER TABLE `misi_anggota`
  ADD CONSTRAINT `misi_anggota_id_misi_foreign` FOREIGN KEY (`id_misi`) REFERENCES `misi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `misi_anggota_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `misi_sub`
--
ALTER TABLE `misi_sub`
  ADD CONSTRAINT `misi_sub_id_misi_foreign` FOREIGN KEY (`id_misi`) REFERENCES `misi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `misi_sub_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pembayaran_id_misi_foreign` FOREIGN KEY (`id_misi`) REFERENCES `misi` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pembayaran_id_paket_foreign` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pembayaran_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD CONSTRAINT `user_activity_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_balance`
--
ALTER TABLE `user_balance`
  ADD CONSTRAINT `user_balance_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `withdraw_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
