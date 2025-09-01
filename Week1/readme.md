# Pemrograman Dart - Week 1

## 📚 Deskripsi
Repository ini berisi materi pembelajaran Dart sebagai persiapan untuk pengembangan aplikasi mobile menggunakan Flutter. Materi mencakup konsep dasar Dart, perulangan, Null Safety, dan Late variables.

## 🎯 Tujuan Pembelajaran
- Memahami sintaksis dasar bahasa pemrograman Dart
- Menguasai konsep perulangan (loop) dalam Dart
- Memahami pentingnya Dart dalam pengembangan Flutter
- Mengenal konsep Null Safety dan Late variables

## 💻 Kode Program
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
```dart
void main(){
  for (int i = 0; i < 10>; i++) {
    print('hello ${i + 2}');
  }
}
```
Output yang diminta (Gantilah Fulan dengan nama Anda):
### Output yang Dihasilkan
```
Nama Saya adalah Fulan Sekarang berumur 18
Nama Saya adalah Fulan Sekarang berumur 17
Nama Saya adalah Fulan Sekarang berumur 16
Nama Saya adalah Fulan Sekarang berumur 15
Nama Saya adalah Fulan Sekarang berumur 14
Nama Saya adalah Fulan Sekarang berumur 13
Nama Saya adalah Fulan Sekarang berumur 12
Nama Saya adalah Fulan Sekarang berumur 11
Nama Saya adalah Fulan Sekarang berumur 10
Nama Saya adalah Fulan Sekarang berumur 9
```
### Jawaban
```dart
void main(){
  for (int i = 18; i > 8; i--) {
    print('Nama Saya adalah Vidi $i');
  }
}
```

### Output yang Dihasilkan
```
Nama Saya adalah Vidi Sekarang Berumur 18
Nama Saya adalah Vidi Sekarang Berumur 17
Nama Saya adalah Vidi Sekarang Berumur 16
Nama Saya adalah Vidi Sekarang Berumur 15
Nama Saya adalah Vidi Sekarang Berumur 14
Nama Saya adalah Vidi Sekarang Berumur 13
Nama Saya adalah Vidi Sekarang Berumur 12
Nama Saya adalah Vidi Sekarang Berumur 11
Nama Saya adalah Vidi Sekarang Berumur 10
Nama Saya adalah Vidi Sekarang Berumur 9
```

## 🤔 Mengapa Penting Memahami Dart Sebelum Flutter?

**Dart adalah fondasi dari Flutter.** Berikut alasan mengapa pemahaman Dart sangat penting:

1. Karena Dart adalah satu-satunya bahasa pemrograman yang digunakan Flutter
2. Memudahkan dalam menulis dan memahami kode Flutter
3. Kemampuan men-debug aplikasi Flutter memerlukan pemahaman Dart

## 📝 Rangkuman Poin-Poin Penting

### Konsep Dasar Dart untuk Flutter Development:

1. **🎯 Bahasa Fundamental Flutter**
   - Dart adalah inti dari framework Flutter
   - Flutter membutuhkan bahasa modern tingkat tinggi untuk memberikan pengalaman terbaik
   - Memahami Dart adalah dasar untuk bekerja dengan Flutter
   - Desain Flutter sangat dipengaruhi oleh bahasa Dart

2. **🏗️ Pemrograman Berorientasi Objek (OOP)**
   - Dart dirancang untuk object-oriented programming
   - Memiliki konsep objek yang menyimpan data (fields) dan kode (methods)
   - Mendukung fitur OOP: encapsulation, inheritance, composition, abstraction, dan polymorphism
   - Objek dibuat dari cetak biru yang disebut class

3. **⚙️ Sintaksis dan Struktur Bahasa**
   - Sintaksis mirip dengan C dan JavaScript untuk kemudahan pembelajaran
   - Menyediakan operator standar untuk manipulasi variabel
   - Built-in types yang umum ditemukan dalam bahasa tingkat tinggi
   - Control flow dan function mirip dengan bahasa pemrograman lainnya

4. **🔧 Operator dan Manipulasi Data**
   - **Arithmetic Operators**: `+`, `-`, `*`, `/`, `~/` (pembagian integer), `%` (modulus)
   - **Increment/Decrement**: `++var`, `var++`, `--var`, `var--`
   - **Equality & Relational**: `==`, `!=`, `>`, `<`, `>=`, `<=`
   - **Logical Operators**: `!expression`, `||` (OR), `&&` (AND)
   - **Shortcut Operators**: `+=`, `-=`, `*=`, `/=`, `~/=`

5. **🚀 Function dan Method**
   - Function adalah cara untuk memisahkan kode
   - Function `main()` adalah titik awal eksekusi program Dart
   - Setiap aplikasi Dart harus memiliki function `main`
   - Function dapat menerima parameter dan mengembalikan nilai
   - Method terikat pada class, function berada di luar class

6. **🛠️ Tool dan Environment**
   - **DartPad**: Tool online untuk belajar dan eksperimen Dart
   - Mendukung core library Dart (kecuali VM library seperti `dart:io`)
   - Dapat dijalankan secara lokal dengan `dart filename.dart`
   - Integration dengan VS Code dan editor lainnya

7. **🔒 Type Safety dan Keamanan**
   - Tidak seperti JavaScript, tidak perlu operator `===`
   - Memiliki fitur type safety yang memastikan operator `==` hanya digunakan pada objek dengan tipe yang sama
   - Operator `==` membandingkan isi variabel, bukan referensi memori
   - Semua tipe data adalah turunan dari class yang memiliki method

8. **🎨 Fleksibilitas Operator**
   - Operator dapat di-override sesuai logika yang diinginkan
   - Operator `+` bisa untuk penjumlahan angka atau penggabungan string
   - Perilaku operator berbeda tergantung jenis operan di sisi kiri

9. **📚 Learning Path**
   - Membutuhkan pemahaman Algoritma dan Pemrograman Dasar
   - Perlu pengetahuan Pemrograman Berorientasi Objek
   - Dart mirip dengan Java dalam desain OO-nya
   - Pengalaman dengan C atau JavaScript memudahkan pembelajaran Dart

10. **🚀 Praktik dan Implementasi**
    - Mulai dengan DartPad untuk eksperimen cepat
    - Praktik dengan contoh kode sederhana seperti loop dan print
    - Pahami struktur function `main()` sebagai entry point
    - Eksperimen dengan berbagai operator dan tipe data

## 🛡️ Null Safety vs Late Variables

### Null Safety
**Null Safety** adalah fitur keamanan yang memastikan variabel tidak dapat memiliki nilai `null` secara tidak sengaja, mengurangi kemungkinan terjadinya runtime errors.

#### Contoh Null Safety:
```dart
void main() {
  // Nullable variable (bisa null)
  String? nullableString;
  nullableString = null; // ✅ Diperbolehkan
  nullableString = "Hello"; // ✅ Diperbolehkan
  
  // Non-nullable variable (tidak bisa null)
  String nonNullableString = "Hello World";
  // nonNullableString = null; // ❌ Error kompilasi
  
  print(nonNullableString); // ✅ Aman
  print(nullableString?.length ?? 0); // ✅ Safe access
}
```

### Late Variables
**Late variables** adalah variabel yang dideklarasikan terlebih dahulu tetapi diinisialisasi nanti, sebelum digunakan.

#### Contoh Late Variables:
```dart
void main() {
  // Deklarasi late variable
  late String lateString;
  late int lateNumber;
  
  // Inisialisasi sebelum digunakan
  lateString = "Hello from Late Variable";
  lateNumber = 42;
  
  // Menggunakan variable
  print(lateString); // Output: Hello from Late Variable
  print(lateNumber); // Output: 42
}
```

#### Contoh Late dengan Function:
```dart
late String expensiveCalculation;

void main() {
  // Late variable hanya diinisialisasi ketika pertama kali diakses
  expensiveCalculation = calculateSomething();
  print(expensiveCalculation);
}

String calculateSomething() {
  print("Calculating...");
  return "Result of expensive calculation";
}
```

### Perbedaan Utama:

| Aspek | Null Safety | Late Variables |
|-------|-------------|----------------|
| **Tujuan** | Mencegah null pointer errors | Menunda inisialisasi variable |
| **Keamanan** | Compile-time safety | Runtime initialization |
| **Penggunaan** | `String?` vs `String` | `late String` |
| **Manfaat** | Mengurangi bugs | Optimasi performa dan fleksibilitas |

## 🚀 Cara Menjalankan Kode

1. Pastikan Dart SDK terinstall
2. Buat file `main.dart`
3. Copy kode program ke dalam file
4. Jalankan dengan command:
   ```bash
   dart run main.dart
   ```

## 📚 Resources Tambahan

- [Dart Documentation](https://dart.dev/guides)
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Null Safety Guide](https://dart.dev/null-safety)

---

**📌 Note**: Repository ini merupakan bagian dari pembelajaran pemrograman mobile menggunakan Flutter framework.