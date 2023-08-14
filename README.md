# workshop

A new Flutter project.

## Getting Started

1. Generate Model
   Untuk membuat model bisa pake extension (vsc): https://marketplace.visualstudio.com/items?itemName=hirantha.json-to-dart
   Atau dengan:
    Copy JSON respon (contract) dari API ke https://jsontodart.in
2. Generate Service
   Buat Code seperti contoh: `todo_service.dart` (Note: tambahkan line `part "api_service.g.dart"` jika belum ada)
   Kemudian jalankan command:
     `flutter pub run build_runner build — delete-conflicting-outputs`
   otomatis akan tercreate `todo_service.g.dart`.
   Atau baca dokumentasi Retrofit (https://pub.dev/packages/retrofit)
   
# Documentation
- GetX: https://github.com/jonataslaw/getx/blob/master/README.id-ID.md
- Retrofit: https://pub.dev/packages/retrofit
