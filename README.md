# TestoPlay

Platform kolaborasi antara Developer yang membutuhkan tester aktif dan Tester yang ingin berkontribusi sambil belajar langsung melalui pengujian aplikasi nyata selama 14 hari berturut-turut.

---

## 🛠️ Prasyarat Sistem
Pastikan perangkat Anda telah terinstal:
- **PHP** (minimal v8.2)
- **Composer**
- **Node.js** & **NPM**
- **MySQL / MariaDB**

---

## 🚀 Panduan Instalasi & Menjalankan Proyek

### 1. Clone Repository
```bash
git clone git@github.com:Wahdaapf/testoplay.git
cd testoplay
```

### 2. Install Dependensi Backend & Frontend
```bash
composer install
npm install
```

### 3. Konfigurasi Environment (`.env`)
Salin file konfigurasi yang sudah disediakan di folder `dataPendukung/env`:

**Windows (PowerShell):**
```powershell
Copy-Item dataPendukung/env .env
```
**Linux / MacOS / Git Bash:**
```bash
cp dataPendukung/env .env
```

### 4. Setup Database
1. Buat database baru di MySQL/phpMyAdmin lokal Anda (atau sesuaikan dengan konfigurasi di `.env`).
2. Import file database yang tersedia di:
   ```text
   dataPendukung/teplay_testoplay.sql
   ```

### 5. Generate Application Key & Storage Link
```bash
php artisan key:generate
php artisan storage:link
```

### 6. Jalankan Server Aplikasi
Jalankan backend server dan frontend asset watcher:

**Terminal 1 (Backend Server):**
```bash
php artisan serve
```

**Terminal 2 (Vite Assets):**
```bash
npm run dev
```

---

## 🌐 Alamat URL & Akses Halaman

| Halaman | URL Lokal | URL Live / Production |
| :--- | :--- | :--- |
| **Landing Page / Dashboard** | [http://127.0.0.1:8000](http://127.0.0.1:8000) | [http://testoplay.my.id](http://testoplay.my.id) |
| **Panel Administrator** | [http://127.0.0.1:8000/admin/login](http://127.0.0.1:8000/admin/login) | [http://testoplay.my.id/admin/login](http://testoplay.my.id/admin/login) |
| **Panel Developer** | [http://127.0.0.1:8000/developer/login](http://127.0.0.1:8000/developer/login) | [http://testoplay.my.id/developer/login](http://testoplay.my.id/developer/login) |
| **Panel Tester** | [http://127.0.0.1:8000/tester/login](http://127.0.0.1:8000/tester/login) | [http://testoplay.my.id/tester/login](http://testoplay.my.id/tester/login) |

---

## 🔑 Akun Demo untuk Pengujian

Semua akun pengujian menggunakan kata sandi yang sama: `password1234`

| Peran (Role) | Email | Password |
| :--- | :--- | :--- |
| **Administrator** | `admin@gmail.com` | `password1234` |
| **Developer** | `developer@gmail.com` | `password1234` |
| **Tester 1** | `chocopufff1@gmail.com` | `password1234` |
| **Tester 2** | `chocopufff2@gmail.com` | `password1234` |
| **Tester 3** | `chocopufff3@gmail.com` | `password1234` |
