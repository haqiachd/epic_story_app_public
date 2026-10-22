# 📚 Epic Story App

> **Platform Pembelajaran & Buku Cerita Interaktif untuk Anak Berbasis Gamifikasi, Flashcard, dan AI Tutor.**

[![Flutter Version](https://img.shields.io/badge/Flutter-%3E%3D3.6.0-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart Version](https://img.shields.io/badge/Dart-%3E%3D3.6.0-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![State Management](https://img.shields.io/badge/State%20Management-GetX%204.7.2-8E24AA)](https://pub.dev/packages/get)
[![Local Database](https://img.shields.io/badge/Local%20DB-Isar%20Community%203.3-00B4D8)](https://pub.dev/packages/isar_community)
[![Firebase](https://img.shields.io/badge/Backend-Firebase-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com/)
[![License](https://img.shields.io/badge/License-Proprietary-blue.svg)](#)

---

## 📖 Tentang Aplikasi

**Epic Story App** adalah aplikasi edukasi interaktif anak (*kids learning app*) yang menggabungkan keseruan membaca buku cerita digital bergambar, latihan berbasis flashcard, kuis gamifikasi interaktif, serta bimbingan cerdas dari **AI Tutor**. 

Aplikasi dirancang dengan pendekatan visual ceria, efek suara menarik, dan sistem penghargaan koin/reward untuk menumbuhkan minat baca dan ketangkasan belajar anak secara mandiri maupun didampingi orang tua.

---

## ✨ Fitur Utama

### 1. 📖 Buku Cerita Interaktif (*Interactive Storybooks*)
* **Pembaca Buku Digital**: Navigasi halaman cerita yang intuitif dan ramah anak.
* **Kuis Pemahaman Cerita**: Evaluasi setelah membaca melalui kuis pilihan ganda (*multiple choice*), isian kata (*fill in the blank*), dan mencocokkan kelompok (*group quiz*).
* **Riwayat Membaca (*Reading History*)**: Pelacakan buku yang telah selesai atau sedang dibaca.
* **Reaksi & Ulasan Anak**: Fitur interaksi ekspresif anak terhadap buku cerita favorit.
* **Koleksi Kustom (*Bookmarks/Collections*)**: Menyimpan buku pilihan ke dalam daftar koleksi pribadi.

### 2. 🗂️ Flashcards Edukatif (*Smart Flashcards*)
* **Kartu Pembelajaran Multi-Topik**: Modul belajar tematik (Matematika, Bahasa Indonesia, Pengetahuan Umum, dll.).
* **Animasi Flip Card**: Kartu interaktif untuk melatih daya ingat dan pengenalan konsep visual.
* **Sesi Evaluasi & Streak**: Evaluasi hasil skor kartu (*flashcard result*) dan rekam jejak konsistensi belajar anak.
* **Koleksi Flashcard**: Pengelompokan kartu belajar ke dalam kategori yang dapat disesuaikan.

### 3. 🤖 AI Tutor & Smart Quiz Generation
* **Asisten Belajar Cerdas**: Fitur pendamping belajar berbasis kecerdasan buatan (*AI Tutor*).
* **Integrasi Google Gemini API**: Pembuatan soal kuis dinamis secara otomatis menggunakan model `gemini-2.5-flash`.
* **Sinkronisasi Konfigurasi Cloud**: Sinkronisasi kunci API dan metadata aman via Firestore.

### 4. 🎮 Gamifikasi & Reward System
* **Sistem Koin & Permen (*Coins & Candies*)**: Penghargaan otomatis saat anak menyelesaikan bacaan atau kuis.
* **Efek Visual Interaktif**: Animasi selebrasi confetti (*Lottie & Confetti*), *ray burst*, dan efek suara riang (*audioplayers*).
* **Pusat Hadiah (*Reward Center*)**: Klaim reward, perolehan lencana (*badges*), dan album foto pencapaian (*Reward Photo Viewer*).

### 5. 🔊 Multimedia & Aksesibilitas Suara
* **Text-to-Speech (TTS)**: Dukungan audio pembacaan narasi buku dan teks kartu (`flutter_tts`, `cloud_text_to_speech`).
* **Speech-to-Text (STT)**: Pengenalan suara anak (`google_speech`).
* **PDF Reader Terintegrasi**: Dukungan pembacaan dokumen buku berformat PDF (`syncfusion_flutter_pdfviewer` & `flutter_pdfview`).

### 6. 👶 Personalisasi & Onboarding Anak
* **Profil Karakter**: Penyesuaian identitas, avatar, nama panggilan, dan galeri pencapaian anak.
* **Onboarding Bertahap**: Pemilihan jenis kelamin, kelas/tingkat sekolah, dan tanggal lahir dengan antarmuka playful.
* **Login Cepat**: Integrasi autentikasi Google Sign-In dan Firebase Auth.

### 7. ⚡ Offline-First Architecture
* **Database Lokal Isar**: Caching offline berkecepatan tinggi untuk buku, riwayat, flashcard, dan reaksi lokal.
* **Sinkronisasi Otomatis**: Data diselaraskan ke Cloud Firestore saat perangkat terhubung kembali ke internet.
* **Pemantauan Jaringan**: Deteksi status koneksi internet otomatis melalui `connectivity_plus`.

---

## 🏛️ Arsitektur Aplikasi

Proyek ini dibangun menggunakan kombinasi **Clean Architecture** dan **Feature-First Pattern** untuk menjaga modularitas, kemudahan pengujian, dan keterpisahan tanggung jawab (*separation of concerns*):

```
lib/
├── core/                        # Utilitas global, kontrak dasar, dan tema
│   ├── constants/               # API keys, prompt AI, konstanta ukuran
│   ├── routes/                  # Definisi GetX Pages & Route constants (EpicRoutes)
│   ├── services/                # FirebaseService, IsarService, GoogleAuthService
│   ├── styles/                  # Warna (EpicColors), typography, model box
│   ├── utils/                   # Logger (EpicLog), Snackbar, date converter
│   └── widgets/                 # Reusable cards, dialogs, custom appbar, inputs
│
├── data/                        # Layer Data: Implementasi data source & storage
│   ├── models/                  # Remote (API/Firebase) & Local (Isar) models
│   ├── modules/                 # Dependency injection modules (GetX bindings)
│   └── repository_impl/         # Implementasi kontrak repository dari domain
│
├── domain/                      # Layer Domain: Inti logika bisnis (Framework-agnostic)
│   ├── entities/                # Model data domain murni (Book, Flashcard, Quiz, Children)
│   ├── repositories/            # Interface / kontrak repository abstrak
│   └── usecases/                # Kasus penggunaan bisnis (BookUsecase, FlashcardUsecase, dll.)
│
├── feature/                     # Layer Presentation (Feature-First)
│   ├── ai_tutors/               # Fitur interaksi asisten belajar AI
│   ├── auth/                    # Onboarding (gender, class, birth date)
│   ├── books/                   # Modul buku (home, read, quiz, reward, history)
│   ├── favorites/               # Manajemen koleksi & bookmark favorit
│   ├── flashcards/              # Modul flashcard (home, read, quiz, reward, history)
│   ├── home/                    # Dashboard beranda anak
│   ├── others/                  # MainController & utilitas pengujian AI/Gemini
│   ├── profiles/                # Pengaturan profil anak & status koin
│   ├── quizes/                  # Kuis interaktif (pilihan ganda, fill-in-blank, group)
│   ├── rewards/                 # Halaman klaim reward & katalog hadiah
│   └── utils/                   # Splash screen, welcome page, navigation bar
│
├── firebase_options.dart        # Konfigurasi platform Firebase
└── main.dart                    # Entry point aplikasi & inisialisasi service
```

---

## 🛠️ Tech Stack & Dependensi

| Kategori | Teknologi / Pustaka |
| :--- | :--- |
| **Framework & Bahasa** | [Flutter](https://flutter.dev) (>= 3.6.0), [Dart](https://dart.dev) (>= 3.6.0) |
| **State Management & DI**| [GetX](https://pub.dev/packages/get) (Routing, Dependency Injection, Reactive State) |
| **Backend & Cloud** | [Firebase Core](https://pub.dev/packages/firebase_core), [Cloud Firestore](https://pub.dev/packages/cloud_firestore), [Firebase Auth](https://pub.dev/packages/firebase_auth), [Firebase Storage](https://pub.dev/packages/firebase_storage), [Crashlytics](https://pub.dev/packages/firebase_crashlytics) |
| **Local Database** | [Isar Community](https://pub.dev/packages/isar_community) v3 (NoSQL Database Lokal) |
| **Networking** | [Dio](https://pub.dev/packages/dio), [Connectivity Plus](https://pub.dev/packages/connectivity_plus) |
| **AI Integration** | Google Gemini 2.5 Flash API via REST |
| **Audio & Voice** | `flutter_tts`, `google_speech`, `cloud_text_to_speech`, `audioplayers` |
| **PDF & Dokumen** | `syncfusion_flutter_pdfviewer`, `flutter_pdfview` |
| **UI & Animasi** | `flutter_screenutil`, `google_fonts`, `lottie`, `flutter_svg`, `confetti`, `zoom_tap_animation` |
| **Security & Caching** | `flutter_secure_storage`, `cached_network_image`, `gal` |

---

## 🚀 Memulai (Getting Started)

### Prasyarat
Pastikan lingkungan pengembangan Anda telah memenuhi persyaratan berikut:
* **Flutter SDK**: `>= 3.6.0 < 4.0.0`
* **Dart SDK**: Terpasang otomatis bersama Flutter
* **Java SDK**: JDK 17 atau yang kompatibel
* **Android Studio / VS Code** beserta ekstensi Flutter & Dart
* Akun **Firebase Console** dengan proyek aktif

---

### Langkah Instalasi

1. **Clone Repositori**:
   ```bash
   git clone <URL_REPOSITORI_ANDA>
   cd epic_story_app
   ```

2. **Unduh Dependensi**:
   ```bash
   flutter pub get
   ```

3. **Generate Isar Code & Model Bindings**:
   Jalankan `build_runner` untuk men-generate schema Isar database dan serializer:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Konfigurasi Firebase & API Keys**:
   * Jalankan FlutterFire CLI untuk mengonfigurasi proyek Firebase Anda secara otomatis:
     ```bash
     flutterfire configure
     ```
     Perintah ini akan men-generate berkas `lib/firebase_options.dart` serta mengunduh `google-services.json` (Android) / `GoogleService-Info.plist` (iOS).
   * Masukkan API Key Gemini / DeepSeek Anda pada `lib/core/constants/api_key.dart`:
     ```dart
     class ApiKey {
       static String gemini = "YOUR_GEMINI_API_KEY";
       static String deepseek = "YOUR_DEEPSEEK_API_KEY";
     }
     ```

5. **Jalankan Aplikasi**:
   ```bash
   flutter run
   ```

---

## 🗺️ Alur & Navigasi Rute (`EpicRoutes`)

Aplikasi menggunakan perutean terpusat GetX pada `lib/core/routes/epic_routes.dart`:

* **Inisialisasi & Pengenalan**:
  * `/slash_screen`: Memeriksa sesi login, inisialisasi Isar & Firebase.
  * `/welcome`: Halaman sambutan awal.
  * `/epic_navigation`: Root navigasi dengan bottom navigation bar responsif.
* **Autentikasi & Onboarding**:
  * `/choose_gender` -> `/choose_class` -> `/choose_date_birth`: Alur setup profil anak.
* **Buku Cerita**:
  * `/book_home`: Katalog buku cerita.
  * `/book_read`: Layar membaca buku per halaman.
  * `/book_quiz`: Kuis pemahaman bacaan.
  * `/book_reward`: Klaim hadiah setelah menyelesaikan buku.
  * `/book_histories`: Riwayat aktivitas membaca.
* **Flashcard**:
  * `/flashcard_home`: Katalog set flashcard belajar.
  * `/flashcard_read`: Sesi kartu interaktif.
  * `/flashcard_result`: Rangkuman nilai & skor kartu.
  * `/flashcard_reward`: Hadiah pencapaian sesi flashcard.
  * `/flashcard_histories`: Catatan riwayat latihan kartu.
* **Koleksi & Reward**:
  * `/fav_home`: Daftar koleksi & bookmark buku/flashcard tersimpan.
  * `/create_collection`: Pembuatan folder koleksi baru.
  * `/detail_collection`: Isi detail koleksi buku/flashcard.
  * `/reward_home`: Dashboard penukaran dan perolehan hadiah.
* **Asisten & Profil**:
  * `/ai_tutor_home`: Ruang interaksi dengan AI Tutor.
  * `/profile_home`: Halaman informasi profil murid dan pengaturan akun.

---

## 📱 Struktur Aset

Direktori `assets/` terorganisir ke dalam beberapa sub-folder:
* `assets/images/`: Ikon grafis UI, ilustrasi koin, lencana hadiah, tombol visual, dan latar.
* `assets/books/others/`: Dokumen sampel PDF cerita (contoh: `transportation.pdf`).
* `assets/jsons/`: Aset animasi Lottie dan data konfigurasi pendukung.

---

## 📄 Lisensi

Hak Cipta © 2026 **Epic Story App**. Seluruh hak cipta dilindungi undang-undang.
Proyek ini bersifat tertutup (*proprietary*) untuk tujuan edukasi dan pengembangan internal.
