# PROMPT AI AGENT — MEMPERBAIKI HALAMAN PEMBAYARAN QRIS (LOWER MANHATTAN COFFEE SHOP)

Salin seluruh isi di bawah garis ini ke AI agent. Isi dulu bagian "DATA YANG HARUS DIISI PENGGUNA" (Bagian B).

---

## A. PERAN, MASALAH, DAN TUJUAN

Kamu adalah engineer senior CodeIgniter 4 (PHP 8.2, MariaDB). Tugasmu memperbaiki halaman pembayaran QRIS pelanggan di repo `lower-manhattan-coffee-shop` agar identitas toko di halaman itu sesuai dengan konfigurasi aplikasi, bukan teks lama yang tertanam di kode.

### Masalah yang sudah ditemukan (verifikasi sendiri di kode sebelum mengubah)
Pada halaman `/payment-qris/{id_order}/{id_meja}`:
1. `app/Views/customer/payment_qris.php` (sekitar baris 338–339) memuat teks **tertanam** (hardcode): alamat "Jl. Kaliabang No.8, Perwira, Bekasi Utara, Kota Bekasi, Jawa Barat" dan "NMID: ID102435780413". Nilai ini tidak berasal dari pengaturan toko, jadi tidak berubah saat admin mengedit identitas toko.
2. Judul kotak merchant menggabungkan nama toko dengan alamat dari pengaturan (`$merchant_name, ucwords(strtolower($merchant_address))`), sehingga tampil seperti "Lower Manhattan Coffee Shop, Bekasi Utara" lalu alamat panjang di bawahnya (duplikat dan membingungkan).
3. `app/Controllers/PaymentQris.php` memakai kunci pengaturan lama `nama_warkop` dan nilai cadangan `'Bekasi Utara'`.
4. Gambar QRIS yang diunggah (pengaturan `qris`) pada tampilan pengguna memperlihatkan kartu merchant "balé by btn" dengan nama **"WARKOP BAHAGIA"**, yaitu sisa proyek lama. Nama merchant di dalam gambar tidak sama dengan nama toko di halaman.
5. Kemungkinan teks lama serupa ada di tempat lain (struk, PDF laporan, dasbor, halaman login, footer, email/notifikasi). Cari semuanya.

### Tujuan
Semua identitas di halaman QRIS (nama toko, alamat, NMID, gambar QRIS, teks bantuan) berasal dari pengaturan toko yang dapat diubah admin lewat halaman `/admin/settings`, konsisten dengan nama program "Lower Manhattan Coffee Shop", tanpa menyentuh logika pembayaran.

## ATURAN KERAS

1. JANGAN mengubah logika pembayaran: validasi token pesanan (`hash_equals`), polling `cek-status`, transaksi checkout, pembayaran kasir, pembatalan, dan stok. Perubahan hanya pada presentasi dan pengaturan identitas.
2. JANGAN mengubah data di database utama. Uji hanya pada salinan/DB test (mis. `lowermanhattancoffeshop_test`). Backup dulu dengan `mysqldump`. Jangan mengedit migrasi lama; perubahan skema/default hanya lewat migrasi BARU yang idempoten.
3. JANGAN menampilkan isi `.env`, password, hash, token, atau kunci di output.
4. Buat branch `fix-qris-identitas` dan tag `backup-sebelum-fix-qris` sebelum mengubah apa pun; tampilkan bukti.
5. Semua output ke HTML memakai `esc()`. Jangan merender input admin sebagai HTML mentah.
6. Jangan menghapus berkas unggahan yang ada. Gambar QRIS lama hanya diganti lewat alur unggah admin.
7. Jangan menerima status "selesai" tanpa bukti (keluaran perintah, hasil tes, screenshot).

## B. DATA YANG HARUS DIISI PENGGUNA

```
NAMA_TOKO        = Lower Manhattan Coffee Shop        # ubah bila berbeda
ALAMAT_LENGKAP   = [ISI: alamat yang ingin tampil di halaman QRIS]
NMID             = [ISI atau KOSONGKAN]               # kosong = baris NMID disembunyikan
MODE_QRIS        = [demo / live]
GAMBAR_QRIS      = [ISI: path berkas QRIS yang akan dipakai, atau "pakai placeholder"]
```

Aturan tentang `MODE_QRIS` (WAJIB dipatuhi):
- Gambar QRIS dan NMID hanya boleh dipakai sebagai pembayaran **live** jika itu benar-benar milik pemilik usaha yang menerima uangnya. Jangan menampilkan kode QRIS atau NMID milik usaha/orang lain di bawah nama toko yang berbeda, karena pembayar bisa mengira membayar ke toko yang salah dan uangnya masuk ke pihak lain.
- Jika toko ini adalah proyek simulasi/akademik (dataset Maven bersifat simulasi), gunakan mode `demo`: tampilkan gambar placeholder (`uploads/qris-placeholder.svg` atau gambar demo yang jelas bukan QRIS sungguhan), sembunyikan NMID, dan tampilkan pita peringatan "MODE DEMO — bukan pembayaran sungguhan" di halaman.
- Bila `MODE_QRIS` kosong atau tidak jelas, berhenti di Fase 2 dan laporkan, jangan memilih sendiri; sementara gunakan perilaku `demo`.

---

## C. FASE 0 — AUDIT (READ-ONLY)

1. Buat branch dan tag pengaman (Aturan 4).
2. Baca dan ringkas: `app/Controllers/PaymentQris.php`, `app/Views/customer/payment_qris.php`, `app/Controllers/Admin/Setting.php`, `app/Views/admin/settings.php`, helper `setting()`, model/tabel `settings` (kolom dan kunci yang ada), serta rute terkait di `app/Config/Routes.php`.
3. Cari semua kemunculan teks lama di seluruh repo (kecuali `vendor/`, `.git/`, `writable/`): `Kaliabang`, `Perwira`, `Bekasi Utara`, `NMID`, `ID1024`, `nama_warkop`, `Warkop Bahagia`, `warkop`, `WARKOP BAHAGIA`. Untuk tiap temuan catat berkas, baris, dan apakah itu (a) hardcode tampilan, (b) kunci pengaturan, (c) komentar/dokumen, (d) data uji, (e) dokumentasi sejarah yang sengaja dipertahankan.
4. Periksa tempat lain yang menampilkan identitas toko: struk (`/kasir/struk...`), PDF laporan (FPDF), dasbor admin/kasir, halaman login, halaman pesan/keranjang, footer, notifikasi.
5. Periksa gambar QRIS: nilai pengaturan `qris` di DB test, berkas `public/uploads/qris-placeholder.svg`, dan apakah berkas gambar yang tertaut ada. Catat nama berkas saja; jangan memuat isi QR atau mendekode kode QR.
6. Keluaran: `docs/audit_fix_qris.md` berisi tabel temuan dan rencana perubahan. Berhenti bila ada kontradiksi penghalang.

## D. FASE 1 — PERUBAHAN PENGATURAN & DATA

1. Tambahkan kunci pengaturan baru lewat migrasi/seeder BARU yang idempoten (hanya mengisi bila kunci belum ada): `nama_toko` (default dari `nama_warkop` jika ada, jika tidak `NAMA_TOKO`), `alamat_lengkap` (default `ALAMAT_LENGKAP`), `nmid` (default `NMID`, boleh kosong), `qris_mode` (`demo` atau `live`, default `MODE_QRIS`).
2. Kompatibilitas: tetap baca `nama_warkop` sebagai cadangan (fallback) bila `nama_toko` kosong, agar instalasi lama tidak rusak. Jangan menghapus kunci lama.
3. Jika tabel `settings` berstruktur pasangan kunci-nilai, jangan menambah kolom; jika berkolom tetap, buat migrasi baru dengan `down()` yang benar. Collation `utf8mb4` harus konsisten dengan tabel yang ada.
4. Jangan menulis ke DB utama; sediakan skrip/instruksi SQL terpisah `database/fix_qris_pengaturan.sql` (idempoten, dengan README singkat) agar pengguna menjalankannya sendiri setelah backup.

## E. FASE 2 — PERUBAHAN KODE

### Controller `PaymentQris.php`
- Ambil data lewat satu fungsi bantu (mis. `app/Libraries/StoreIdentity.php` atau helper) yang mengembalikan: `nama_toko`, `alamat_lengkap`, `nmid`, `qris_image`, `qris_mode`. Urutan pencarian: kunci baru → kunci lama → nilai cadangan netral ("Lower Manhattan Coffee Shop", alamat kosong). Hapus cadangan `'Bekasi Utara'`.
- Normalisasi: `trim`, batasi panjang, buang kontrol karakter. NMID: terima format `^[A-Z]{2}[0-9A-Z]{8,20}$` (huruf besar); jika tidak cocok, anggap kosong dan catat peringatan di log (tanpa mencetak nilainya ke respons).
- Jika `qris_mode` = `demo` atau gambar tidak ditemukan: pakai `uploads/qris-placeholder.svg`, kosongkan NMID, dan kirim flag `is_demo = true`.
- Jangan mengubah validasi token, kode status 403/404, atau nama variabel yang dipakai JavaScript polling.

### View `customer/payment_qris.php`
- Hapus teks tertanam alamat dan NMID.
- Kotak merchant menjadi: baris nama = `esc($nama_toko)` saja; baris alamat = `esc($alamat_lengkap)` (disembunyikan bila kosong); baris NMID = `NMID: esc($nmid)` (disembunyikan bila kosong). Tidak ada lagi gabungan nama + `ucwords(alamat)`.
- Jika `is_demo`: tampilkan pita jelas di atas gambar QRIS: "MODE DEMO — bukan pembayaran sungguhan". Pada mode live, jangan tampilkan pita.
- Teks `alt` gambar: "Kode QRIS pembayaran untuk {nama toko}". Pertahankan `onerror` ke placeholder.
- Footer dan teks lain memakai `nama_toko` (bukan `nama_warkop`).
- Pertahankan semua gaya, tombol tutup, instruksi, kotak "Menunggu konfirmasi kasir", dan skrip polling apa adanya.

### Halaman admin `/admin/settings`
- Tambahkan kolom form: Nama Toko, Alamat Lengkap (textarea, maks 255), NMID (opsional, dengan contoh format), Mode QRIS (demo/live; tampilkan peringatan bahwa live hanya untuk QRIS milik pemilik usaha). Validasi di sisi server, CSRF tetap aktif, pesan galat berbahasa Indonesia.
- Simpan ke kunci baru; pertahankan penulisan ke `nama_warkop` hanya jika diperlukan kompatibilitas (jelaskan keputusanmu di dokumen).
- Pratinjau gambar QRIS di form tetap berfungsi; unggahan tetap dibatasi JPG/PNG/WebP, 2 MB.
- Rapikan teks pengantar halaman agar tidak lagi menyiratkan toko lama.

### Tempat lain (hasil audit)
- Ganti teks tertanam yang menyebut toko lama atau alamat lama pada struk, PDF, dasbor, login, footer, dan notifikasi dengan data dari fungsi bantu yang sama. Dokumentasi sejarah yang sengaja menyebut Warkop Bahagia (mis. `CHANGELOG.md`, `STATUS_PR-01-21.md`, `Prompt-Revisi-Program.md`) JANGAN diubah; catat saja.
- `ERD Dan LRS (Sudah Revisi)/` dan berkas SQL lama jangan diubah.

## F. FASE 3 — PENGUJIAN (WAJIB, DENGAN BUKTI)

1. Tes PHPUnit baru (`tests/`) untuk halaman QRIS, dijalankan terhadap DB test:
   - Token benar → 200; token salah/kosong → 403; pesanan tidak ada → 404 (perilaku lama tidak berubah).
   - Nama, alamat, dan NMID tampil sesuai pengaturan; tidak ada teks "Kaliabang" atau "ID102435780413" bila pengaturan tidak berisi nilai itu.
   - Alamat/NMID kosong → barisnya tidak dirender.
   - `qris_mode=demo` → pita demo tampil dan NMID tidak tampil; `live` → pita tidak tampil.
   - Input berisi `<script>` atau tanda kutip di nama/alamat → ter-escape, tidak terbaca sebagai HTML.
   - NMID dengan format tidak valid → tidak tampil.
   - Gambar tidak ada → jatuh ke placeholder.
2. Jalankan seluruh suite yang ada (`php vendor/bin/phpunit`) dan tunjukkan hasilnya; tidak boleh ada regresi.
3. Uji manual dengan server lokal terhadap DB test: buat pesanan QRIS lewat alur meja, buka halaman, ubah pengaturan lewat admin, muat ulang, dan konfirmasi perubahan tampil. Simpan screenshot sebelum dan sesudah di `docs/screenshots/fix_qris/` (lebar 390 px dan 1280 px). Jika screenshot tidak bisa diambil di lingkunganmu, tandai "tidak dijalankan" beserta alasan, jangan membuat gambar palsu.
4. Uji polling: setelah kasir menandai lunas, halaman tetap beralih otomatis seperti sebelumnya.
5. Pencarian akhir: jalankan ulang pencarian Fase 0 poin 3 dan tunjukkan bahwa tidak ada lagi hardcode alamat/NMID/nama lama di berkas aplikasi (`app/`, `public/assets/`, `tests/`), kecuali yang sengaja dipertahankan dan dicatat.
6. Bukti DB utama tidak berubah (jumlah baris dan checksum tabel `settings`, `orders`, `payments` sebelum dan sesudah).
7. Tidak ada rahasia di log atau dokumen.

## G. FASE 4 — DOKUMENTASI

1. `docs/fix_qris.md`: apa yang diubah, daftar kunci pengaturan baru dan artinya, cara mengubah identitas lewat admin, cara menjalankan `database/fix_qris_pengaturan.sql` di DB utama setelah backup, dan penjelasan mode demo vs live beserta peringatan soal QRIS milik orang lain.
2. Perbarui bagian pengaturan di `README.md` dan `docs/Identitas...` (bila ada) agar menyebut kolom baru. Tambahkan satu entri di `CHANGELOG.md`.
3. Catat asumsi dan keputusan (kompatibilitas `nama_warkop`, format NMID, perilaku bila kosong) di `docs/keputusan_fix_qris.md`.

## H. LAPORAN AKHIR

Ringkas dan jujur: (1) daftar berkas diubah/ditambah, (2) tabel temuan Fase 0 beserta status tiap temuan (diperbaiki/dipertahankan/ditunda), (3) hasil tes dan screenshot, (4) langkah manual untuk pengguna (isi pengaturan di admin, jalankan SQL di DB utama setelah backup, unggah gambar QRIS yang sah), (5) peringatan bahwa gambar QRIS yang saat ini terunggah menampilkan nama merchant "WARKOP BAHAGIA" dan tidak boleh dipakai sebagai pembayaran live untuk toko ini kecuali memang milik pemilik usaha yang sama.
