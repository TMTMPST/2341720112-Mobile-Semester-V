# Week 04 — Collections & Records (Dart)

Nama: Vidi Joshubzky Saviola  
NIM: 2341720112

Catatan: Semua contoh kode merujuk ke file di folder `Week-04/src` dan telah diuji pada Dart 3.x. Sertakan screenshot output dari VS Code/terminal sesuai petunjuk setiap praktikum.

---

## Praktikum 1 — Eksperimen Tipe Data List

File: `src/Praktikum1.dart`

- Langkah 1 (kode awal) mengecek panjang list dan nilai pada indeks tertentu.
- Langkah 2: Program menampilkan panjang list dan elemen pada indeks; assert akan lolos jika kondisi benar.
- Langkah 3: Diminta mengganti menjadi variabel final dengan panjang 5 (default null), isi index 1 = Nama, index 2 = NIM, lalu print.

Ringkasan implementasi (final state di repo):

- Menggunakan `final List<String?> list = List<String?>.filled(5, null);`
- `list[1] = 'Vidi Joshubzky Saviola'`
- `list[2] = '2341720112'`
- Diprint panjang list dan semua elemen penting.

Contoh output (ringkas):

- Length of list: 5
- Element at index 1: Vidi Joshubzky Saviola
- Element at index 2: 2341720112
- Full list: [null, Vidi Joshubzky Saviola, 2341720112, null, null]

Screenshot:  
![Praktikum 1 Output](./img/praktikum1.png)

---

## Praktikum 2 — Eksperimen Tipe Data Set

File: `src/Praktikum2.dart`

- Langkah 1: Menampilkan koleksi unsur (di set/list sesuai materi).
- Langkah 2: Program mencetak koleksi ke console.
- Langkah 3: Diminta membuat tiga variabel (dua Set dan satu Map) dan menjelaskan bedanya. Lalu tambahkan nama & NIM ke dua Set dengan `.add()` dan `.addAll()`. Map boleh dihapus/diabaikan sesuai instruksi.

Ringkasan implementasi (final state di repo):

- `names2` (Set) diisi menggunakan `.add("Vidi Joshubzky Saviola")` dan `.add("2341720112")`.
- `names3` (Set) diisi menggunakan `.addAll(["Vidi Joshubzky Saviola", "2341720112"])`.
- Dicetak `names1`, `names2`, `names3` untuk menunjukkan hasil.

Contoh output (ringkas):

- names2 (Set with .add()): {Vidi Joshubzky Saviola, 2341720112}
- names3 (Set with .addAll()): {Vidi Joshubzky Saviola, 2341720112}

Screenshot:  
![Praktikum 2 Output](./img/praktikum2.png)

---

## Praktikum 3 — Eksperimen Tipe Data Maps

File: `src/Praktikum3.dart`

- Langkah 1: Mendefinisikan dua Map: `gifts` (key String) dan `nobleGases` (key int). Perbaikan yang dilakukan: pastikan semua value bertipe String agar konsisten, mis. `18: 'argon'`.
- Langkah 2: Mencetak nilai awal Map.
- Langkah 3: Membuat `mhs1` (Map<String, String>) dan `mhs2` (Map<int, String>), lalu mengisi sesuai instruksi. Tambahkan nama & NIM ke semua Map.

Perbaikan error yang pernah terjadi:

- Mengubah `18: 2` menjadi `18: 'argon'` agar sesuai tipe.
- Pastikan operasi penambahan elemen ditujukan ke `mhs1` dan `mhs2`, bukan ke `gifts`/`nobleGases` yang salah variabel.

Contoh output (ringkas):

- gifts: {first: partridge, second: turtledoves, fifth: golden rings, nama: Vidi Joshubzky Saviola, nim: 2341720112}
- nobleGases: {2: helium, 10: neon, 18: argon, 1: Vidi Joshubzky Saviola, 99: 2341720112}
- mhs1: {first: partridge, second: turtledoves, fifth: golden rings, nama: Vidi Joshubzky Saviola, nim: 2341720112}
- mhs2: {2: helium, 10: neon, 18: argon, 1: Vidi Joshubzky Saviola, 99: 2341720112}

Screenshot:  
![Praktikum 3 Output](./img/praktikum3.png)

---

## Praktikum 4 — List: Spread & Control-flow Operators

File: `src/Praktikum4.dart`

Cakupan:

- Spread `...` dan null-aware spread `...?`
- Conditional element `if (cond) ...`
- Case pattern `if (login case 'Manager') ...`
- Collection-for `for (var i in list) ...`

Ringkasan hasil dan perbaikan:

- Langkah 1–2: `print(list1);` menghasilkan error karena `list1` tidak terdefinisi. Diperbaiki dengan mencetak `list` atau mendefinisikan `list1` lebih dulu.
- Langkah 3: Null-aware spread digunakan hanya bila sumbernya bisa null. Contoh: `var list4 = [0, ...?nullableList];` bekerja saat `nullableList == null`.
- Langkah 4: Conditional element ditunjukkan dengan fungsi `createNav(bool)` untuk menghindari deteksi dead code oleh analyzer, dan dicetak dua keadaan `true/false`.
- Langkah 5: Case pattern matching digunakan untuk menambahkan 'Inventory' jika `login == 'Manager'`.
- Langkah 6: Collection-for membentuk `['#0', '#1', '#2', '#3']` dari list integer.

Screenshot:  
![Praktikum 4 Output](./img/praktikum4.png)

---

## Praktikum 5 — Experimen Tipe Data Records

File: `src/Praktikum5.dart`

Cakupan:

- Record literal dengan positional dan named fields
- Fungsi `tukar` yang menerima dan mengembalikan record
- Deklarasi tipe record `(String, int)` dan inisialisasi nama & NIM
- Akses field: positional (`$1`, `$2`) dan named (`.a`, `.b`)

Ringkasan hasil:

- Langkah 1–2: `var record = ('first', a: 2, b: true, 'last');` berjalan tanpa error (Dart 3+).
- Langkah 3: `tukar((int,int) record)` menukar urutan nilai `(a, b)` → `(b, a)` dan dipanggil di `main()` untuk menunjukkan prosesnya.
- Langkah 4: `(String, int) mahasiswa = ('Vidi Joshubzky Saviola', 2341720112);` berhasil dicetak.
- Langkah 5: `mahasiswa2` diakses via `$1`, `.a`, `.b`, `$2` dan salah satu field berisi Nama/NIM Anda.

Screenshot:  
![Praktikum 5 Output](./img/praktikum5.png)

---

## Jawaban Pertanyaan Teori

### 2) Apa itu Functions dalam bahasa Dart?

- Function adalah blok kode yang dapat dipanggil untuk menjalankan tugas tertentu. Function dapat memiliki parameter, nilai balik (return), dan menangani asinkron (async/await). Di Dart, function adalah nilai (first-class objects) sehingga bisa disimpan di variabel, dikirim sebagai argumen, atau dikembalikan dari function lain.

### 3) Jenis-jenis parameter di Functions (dengan contoh)

- Positional required:
  - `int tambah(int a, int b) => a + b;`
- Positional optional (diakhiri dengan `[]`, hanya untuk posisi):
  - `String sapa(String nama, [String? gelar]) => 'Halo ${gelar ?? ''} $nama'.trim();`
- Named optional (diapit `{}`) dengan default value:
  - `void cetak({String prefix = '>', required String pesan}) { print('$prefix $pesan'); }`
- Kombinasi (hindari terlalu kompleks; gunakan `required` untuk named yang wajib):
  - `void login({required String user, required String pass, bool remember = false}) { ... }`

### 4) Functions sebagai first-class objects

- Maksudnya function diperlakukan sebagai nilai/objek: bisa disimpan di variabel, dikirim sebagai argumen, atau dikembalikan dari function lain.
- Contoh:

```dart
int kali(int a, int b) => a * b;

void jalankanOperasi(int x, int y, int Function(int,int) op) {
  print(op(x, y));
}

void main() {
  var f = kali;          // disimpan di variabel
  jalankanOperasi(3, 4, f); // dikirim sebagai argumen → 12
}
```

### 5) Anonymous Functions

- Function tanpa nama (lambda/closure) yang biasanya didefinisikan inline.
- Contoh:

```dart
var angka = [1,2,3];
var hasil = angka.map((n) => n * 2).toList(); // (n) => n * 2 adalah anonymous function
```

- Juga dapat memiliki body multi-baris:

```dart
angka.forEach((n) {
  var kuadrat = n * n;
  print(kuadrat);
});
```

### 6) Perbedaan Lexical scope vs Lexical closures

- Lexical scope: Ruang lingkup penentuan variabel berdasarkan posisi kode saat ditulis (compile-time), bukan saat runtime.
- Closure: Function yang “membawa” (capture) variabel dari scope di mana function itu didefinisikan.
- Contoh:

```dart
Function buatPenghitung() {
  var hitung = 0; // berada di scope luar
  return () {
    hitung++;     // closure meng-capture variabel hitung
    return hitung;
  };
}

void main() {
  var next = buatPenghitung();
  print(next()); // 1
  print(next()); // 2
}
```

### 7) Return multiple value di Functions (contoh)

- Menggunakan Records (Dart 3+):

```dart
(String, int) profil() => ('Vidi Joshubzky Saviola', 2341720112);

void main() {
  var (nama, nim) = profil();
  print(nama); // Vidi Joshubzky Saviola
  print(nim);  // 2341720112
}
```

- Alternatif lain: gunakan class, Map, atau List (kurang type-safe dibanding records untuk data heterogen).

---

## Cara Menjalankan (opsional)

Jalankan masing-masing file dari folder `Week-04/src`:

```bash
# Praktikum 1–5
dart run src/Praktikum1.dart
dart run src/Praktikum2.dart
dart run src/Praktikum3.dart
dart run src/Praktikum4.dart
dart run src/Praktikum5.dart
```

Jika Anda belum menggunakan Dart 3 untuk Praktikum 5 (Records), silakan upgrade ke Dart 3.x terlebih dahulu.

---

## Catatan Screenshot

Simpan hasil capture di folder `Week-04/img/` dengan nama file berikut (atau sesuaikan):

- `praktikum1.png`
- `praktikum2.png`
- `praktikum3.png`
- `praktikum4.png`
- `praktikum5.png`

Lalu pastikan tautan gambar pada README sudah menampilkan screenshot Anda.
