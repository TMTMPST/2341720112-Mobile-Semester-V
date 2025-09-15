# Pemrograman Dart - Week 04

Nama: Vidi Joshubzky Saviola  
NIM: 2341720112

## Soal 1

Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

### Praktikum 1: Eksperimen Tipe Data List

#### Langkah 1

Ketik atau salin kode program berikut ke dalam void main().

```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

#### Langkah 2

**Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!**

![](./img/praktikum1_step2.png)

**Penjelasan:**

1. **Deklarasi list:**

   ```dart
   var list = [1, 2, 3];
   ```

   List `list` dibuat dengan 3 elemen: `[1, 2, 3]`.

2. **Assert statement:**

   - `assert(list.length == 3)` → kondisi **benar** (panjang list = 3).
   - `assert(list[1] == 2)` → kondisi **benar** (elemen index 1 = 2).

   _Catatan: Assert hanya berjalan dalam debug mode. Jika kondisi salah, program akan error._

3. **Print statement pertama:**

   ```dart
   print(list.length);  // Output: 3
   print(list[1]);      // Output: 2
   ```

4. **Modifikasi list:**

   ```dart
   list[1] = 1;
   ```

   Mengubah elemen pada index 1 dari `2` menjadi `1`. List menjadi `[1, 1, 3]`.

5. **Assert dan print kedua:**
   - `assert(list[1] == 1)` → kondisi **benar** (elemen index 1 sekarang = 1).
   - `print(list[1]);` → Output: `1`

**Output yang dihasilkan:**

```
3
2
1
```

#### Langkah 3

**Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.**

```dart
void main() {
  // Langkah 1: Membuat variabel final dengan index = 5 dan default value = null
  final List<String?> list = List<String?>.filled(5, null);

  // Mengisi elemen index ke-1 dan ke-2 dengan Nama dan NIM
  list[1] = "Vidi Joshubzky Saviola";  // Nama
  list[2] = "2341720112";              // NIM

  // Print hasilnya
  print("Length of list: ${list.length}");
  print("Element at index 1: ${list[1]}");
  print("Element at index 2: ${list[2]}");
  print("Full list: $list");
}
```

![](./img/praktikum1_step3.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki.**

**Penjelasan:**

1. **Pembuatan final list:**

   ```dart
   final List<String?> list = List<String?>.filled(5, null);
   ```

   - Menggunakan `final` sehingga referensi list tidak bisa diubah.
   - `List<String?>` menunjukkan list berisi String yang bisa null.
   - `List.filled(5, null)` membuat list dengan 5 elemen, semuanya bernilai `null`.

2. **Pengisian elemen:**

   - `list[1] = "Vidi Joshubzky Saviola"` → mengisi index 1 dengan nama.
   - `list[2] = "2341720112"` → mengisi index 2 dengan NIM.

3. **Hasil akhir:**
   List menjadi: `[null, "Vidi Joshubzky Saviola", "2341720112", null, null]`

**Output yang dihasilkan:**

```
Length of list: 5
Element at index 1: Vidi Joshubzky Saviola
Element at index 2: 2341720112
Full list: [null, Vidi Joshubzky Saviola, 2341720112, null, null]
```

**Tidak ada error yang terjadi** karena:

- List dideklarasikan sebagai `List<String?>` yang memungkinkan nilai null.
- Modifikasi elemen list masih diizinkan meskipun variabel `final` (yang final adalah referensinya, bukan isi list-nya).

### Praktikum 2: Eksperimen Tipe Data Set

#### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

#### Langkah 2

**Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.**

![](./img/praktikum2_step2.png)

**Penjelasan:**

1. **Deklarasi Set:**

   ```dart
   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
   ```

   Variable `halogens` dideklarasikan sebagai Set yang berisi 5 elemen String unsur halogen.

2. **Print statement:**
   ```dart
   print(halogens);
   ```
   Menampilkan seluruh isi Set ke console.

**Output yang dihasilkan:**

```
{fluorine, chlorine, bromine, iodine, astatine}
```

**Tidak ada error yang terjadi** karena sintaks Set literal `{}` sudah benar dan semua elemen bertipe String yang konsisten.

#### Langkah 3

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  // Menambahkan nama dan NIM ke Set names2 menggunakan .add()
  names2.add("Vidi Joshubzky Saviola");
  names2.add("2341720112");

  // Menambahkan nama dan NIM ke Set names3 menggunakan .addAll()
  names1.addAll(["Vidi Joshubzky Saviola", "2341720112"]);

  print("names1 (List): $names1");
  print("names2 (Set with .add()): $names2");
  print("names3 (Set with .addAll()): $names1");
}
```

![](./img/praktikum2_step3.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut.**

**Penjelasan:**

1. **Deklarasi tiga variabel:**

   - `var names1 = <String>{};` → Set kosong bertipe String (eksplisit)
   - `Set<String> names2 = {};` → Set kosong bertipe String (deklarasi tipe)
   - `var names3 = {};` → **Map kosong**, bukan Set!

2. **Print awal menampilkan:**

   ```
   {} // names1 (Set kosong)
   {} // names2 (Set kosong)
   {} // names3 (Map kosong)
   ```

3. **Perbaikan yang dilakukan:**

   - Karena `names3` adalah Map (bukan Set), kita gunakan `names1` untuk `.addAll()`
   - **names2** diisi dengan `.add()`: menambah satu elemen per pemanggilan
   - **names1** diisi dengan `.addAll()`: menambah beberapa elemen sekaligus

4. **Pengisian elemen:**

   ```dart
   names2.add("Vidi Joshubzky Saviola");  // tambah nama
   names2.add("2341720112");              // tambah NIM

   names1.addAll(["Vidi Joshubzky Saviola", "2341720112"]); // tambah keduanya sekaligus
   ```

**Output yang dihasilkan:**

```
{fluorine, chlorine, bromine, iodine, astatine}
{}
{}
{}
names1 (Set with .addAll()): {Vidi Joshubzky Saviola, 2341720112}
names2 (Set with .add()): {Vidi Joshubzky Saviola, 2341720112}
```

**Perbedaan `.add()` vs `.addAll()`:**

- `.add(element)` → menambah satu elemen
- `.addAll(collection)` → menambah semua elemen dari collection lain

**Catatan tentang `names3`:**

- `var names3 = {}` membuat Map kosong, bukan Set
- Untuk membuat Set kosong: gunakan `<String>{}` atau deklarasi tipe `Set<String>`

### Praktikum 3: Eksperimen Tipe Data Maps

#### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
```

#### Langkah 2

**Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.**

![](./img/praktikum3_step2.png)

**Penjelasan:**

1. **Deklarasi Map gifts:**

   ```dart
   var gifts = {
     'first': 'partridge',    // String: String
     'second': 'turtledoves', // String: String
     'fifth': 1               // String: int ❌ Inconsistent!
   };
   ```

   **Problem:** Map `gifts` memiliki value dengan tipe berbeda (String dan int).

2. **Deklarasi Map nobleGases:**

   ```dart
   var nobleGases = {
     2: 'helium',  // int: String
     10: 'neon',   // int: String
     18: 2,        // int: int ❌ Inconsistent!
   };
   ```

   **Problem:** Map `nobleGases` juga memiliki value dengan tipe berbeda (String dan int).

3. **Output awal (sebelum perbaikan):**
   ```
   {first: partridge, second: turtledoves, fifth: 1}
   {2: helium, 10: neon, 18: 2}
   ```

**Perbaikan yang diperlukan:**

- Ubah `'fifth': 1` menjadi `'fifth': '1'` atau nilai String lain
- Ubah `18: 2` menjadi `18: 'argon'` atau nilai String lain

**Kode yang diperbaiki:**

```dart
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'  // ✅ Diperbaiki menjadi String
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',  // ✅ Diperbaiki menjadi String
  };

  print(gifts);
  print(nobleGases);
}
```

**Output setelah perbaikan:**

```
{first: partridge, second: turtledoves, fifth: golden rings}
{2: helium, 10: neon, 18: argon}
```

#### Langkah 3

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print('Initial gifts: $gifts');
  print('Initial nobleGases: $nobleGases');

  // Kode yang diminta - dengan perbaikan error
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';     // ✅ Diperbaiki: menggunakan mhs1
  mhs1['second'] = 'turtledoves';  // ✅ Diperbaiki: menggunakan mhs1
  mhs1['fifth'] = 'golden rings';  // ✅ Diperbaiki: menggunakan mhs1

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';   // ✅ Diperbaiki: menggunakan mhs2
  mhs2[10] = 'neon';    // ✅ Diperbaiki: menggunakan mhs2
  mhs2[18] = 'argon';   // ✅ Diperbaiki: menggunakan mhs2

  // Menambahkan elemen nama dan NIM pada setiap variabel
  // 1. gifts (Map<String, String>)
  gifts['nama'] = 'Vidi Joshubzky Saviola';
  gifts['nim'] = '2341720112';

  // 2. nobleGases (Map<int, String>)
  nobleGases[1] = 'Vidi Joshubzky Saviola';  // menggunakan key integer
  nobleGases[99] = '2341720112';             // menggunakan key integer

  // 3. mhs1 (Map<String, String>)
  mhs1['nama'] = 'Vidi Joshubzky Saviola';
  mhs1['nim'] = '2341720112';

  // 4. mhs2 (Map<int, String>)
  mhs2[1] = 'Vidi Joshubzky Saviola';   // menggunakan key integer
  mhs2[99] = '2341720112';              // menggunakan key integer

  // Menampilkan hasil akhir
  print('\n=== HASIL AKHIR ===');
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
```

![](./img/praktikum3_step3.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki.**

**Penjelasan:**

1. **Error pada kode awal:**

   ```dart
   // ❌ ERROR: Operasi pada variabel yang salah
   gifts['first'] = 'partridge';  // Seharusnya mhs1['first'] = ...
   gifts['second'] = 'turtledoves'; // Seharusnya mhs1['second'] = ...

   nobleGases[2] = 'helium';      // Seharusnya mhs2[2] = ...
   nobleGases[10] = 'neon';       // Seharusnya mhs2[10] = ...
   ```

2. **Perbaikan yang dilakukan:**

   - Menggunakan `mhs1` untuk operasi Map<String, String>
   - Menggunakan `mhs2` untuk operasi Map<int, String>

3. **Penambahan nama dan NIM:**
   - **gifts**: key String → `'nama'` dan `'nim'`
   - **nobleGases**: key int → `1` dan `99`
   - **mhs1**: key String → `'nama'` dan `'nim'`
   - **mhs2**: key int → `1` dan `99`

**Output yang dihasilkan:**

```
Initial gifts: {first: partridge, second: turtledoves, fifth: golden rings}
Initial nobleGases: {2: helium, 10: neon, 18: argon}

=== HASIL AKHIR ===
gifts: {first: partridge, second: turtledoves, fifth: golden rings, nama: Vidi Joshubzky Saviola, nim: 2341720112}
nobleGases: {2: helium, 10: neon, 18: argon, 1: Vidi Joshubzky Saviola, 99: 2341720112}
mhs1: {first: partridge, second: turtledoves, fifth: golden rings, nama: Vidi Joshubzky Saviola, nim: 2341720112}
mhs2: {2: helium, 10: neon, 18: argon, 1: Vidi Joshubzky Saviola, 99: 2341720112}
```

**Dokumentasi Laporan:**

1. **Map Declaration:**

   - Map menggunakan syntax `{key: value}`
   - Tipe key dan value harus konsisten dalam satu Map

2. **Map Operations:**

   - Akses elemen: `map[key]`
   - Tambah/ubah elemen: `map[key] = value`

3. **Key Types:**

   - String keys: `'nama'`, `'nim'` untuk gifts dan mhs1
   - Integer keys: `1`, `99` untuk nobleGases dan mhs2

4. **Type Safety:**
   - `Map<String, String>` hanya menerima String key dan String value
   - `Map<int, String>` hanya menerima int key dan String value

### Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

#### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
```

#### Langkah 2

**Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.**

![](./img/praktikum4_step2.png)

**Penjelasan:**

1. **Deklarasi List:**

   ```dart
   var list = [1, 2, 3];      // ✅ List dengan 3 elemen
   var list2 = [0, ...list];  // ✅ Spread operator menggabungkan list
   ```

2. **Print Statement:**
   ```dart
   print(list1);  // ❌ ERROR: 'list1' tidak terdefinisi
   ```

**Error yang terjadi:**

```
Error: Undefined name 'list1'.
```

**Perbaikan yang diperlukan:**
Ubah `list1` menjadi `list` karena variabel yang didefinisikan adalah `list`, bukan `list1`.

**Kode yang diperbaiki:**

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];  // Spread operator: [0, 1, 2, 3]
  print(list);               // ✅ Diperbaiki: menggunakan 'list'
  print(list2);
  print(list2.length);
}
```

**Output setelah perbaikan:**

```
[1, 2, 3]
[0, 1, 2, 3]
4
```

**Penjelasan Spread Operator (`...`):**

- `...list` menyebarkan semua elemen dari `list` ke dalam list baru
- `[0, ...list]` menghasilkan `[0, 1, 2, 3]`
- Panjang `list2` menjadi 4 (1 elemen + 3 elemen dari spread)

#### Langkah 3

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // Kode tambahan
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```

![](./img/praktikum4_step3.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki.**

**Error yang terjadi:**

```
Error: Undefined name 'list1'.
```

**Perbaikan yang diperlukan:**

1. Deklarasikan `list1` dengan `var` atau gunakan variabel yang sudah ada
2. Null-aware spread `...?` digunakan untuk list yang mungkin null

**Kode yang diperbaiki:**

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // ✅ Perbaikan: menambahkan 'var' untuk deklarasi
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];  // Null-aware spread
  print(list3.length);

  // Tambahan: Variabel list berisi NIM menggunakan Spread Operators
  var nim = [2, 3, 4, 1, 7, 2, 0, 1, 1, 2]; // NIM: 2341720112
  var listNIM = [...nim];
  var combinedList = [0, ...list, ...listNIM];

  print('\n=== HASIL TAMBAHAN ===');
  print('NIM list: $listNIM');
  print('Combined list: $combinedList');
  print('Combined length: ${combinedList.length}');
}
```

**Output yang dihasilkan:**

```
[1, 2, 3]
[0, 1, 2, 3]
4
[1, 2, null]
3
=== HASIL TAMBAHAN ===
NIM list: [2, 3, 4, 1, 7, 2, 0, 1, 1, 2]
Combined list: [0, 1, 2, 3, 2, 3, 4, 1, 7, 2, 0, 1, 1, 2]
Combined length: 14
```

**Penjelasan:**

1. **Null-aware spread (`...?`):**

   - Digunakan ketika list sumber mungkin null
   - Jika list null, tidak ada elemen yang ditambahkan
   - Jika list tidak null, semua elemen disebarkan

2. **Penggunaan dengan NIM:**
   - NIM (2341720112) dipecah menjadi digit individual
   - Menggunakan spread operator untuk menggabungkan multiple lists
   - `[0, ...list, ...listNIM]` menggabungkan tiga sumber

#### Langkah 4

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```

![](./img/praktikum4_step4.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.**

**Error yang terjadi:**

```
Error: Undefined name 'promoActive'.
```

**Perbaikan dan implementasi:**

```dart
void main() {
  // Predefined lists dari langkah sebelumnya...

  // ✅ Perbaikan: menambahkan deklarasi promoActive

  // Test dengan promoActive = true
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('promoActive = true:');
  print(nav);

  // Test dengan promoActive = false
  promoActive = false;
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('\npromoActive = false:');
  print(nav2);

  // Alternatif: menggunakan function untuk menghindari analyzer warning
  List<String> createNav(bool isPromoActive) {
    return ['Home', 'Furniture', 'Plants', if (isPromoActive) 'Outlet'];
  }

  print('\n=== MENGGUNAKAN FUNCTION ===');
  print('Function true: ${createNav(true)}');
  print('Function false: ${createNav(false)}');
}
```

**Output yang dihasilkan:**

```
promoActive = true:
[Home, Furniture, Plants, Outlet]

promoActive = false:
[Home, Furniture, Plants]

=== MENGGUNAKAN FUNCTION ===
Function true: [Home, Furniture, Plants, Outlet]
Function false: [Home, Furniture, Plants]
```

**Penjelasan Collection If:**

- `if (condition) element` menambahkan elemen hanya jika kondisi true
- Ketika `promoActive = true` → list memiliki 4 elemen
- Ketika `promoActive = false` → list memiliki 3 elemen (tanpa 'Outlet')
- Berguna untuk membuat list dinamis berdasarkan kondisi

#### Langkah 5

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

![](./img/praktikum4_step5.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.**

**Error yang terjadi:**

```
Error: Undefined name 'login'.
```

**Perbaikan dan implementasi:**

```dart
void main() {
  // Previous code...

  // ✅ Perbaikan: menambahkan deklarasi login

  // Test dengan login = 'Manager'
  String login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print('login = "Manager":');
  print(nav2);

  // Test dengan login kondisi lain
  login = 'Employee';
  var nav3 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print('\nlogin = "Employee":');
  print(nav3);

  login = 'Admin';
  var nav4 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print('\nlogin = "Admin":');
  print(nav4);

  // Test dengan login = null (untuk menguji edge case)
  String? loginNull = null;
  var nav5 = ['Home', 'Furniture', 'Plants', if (loginNull case 'Manager') 'Inventory'];
  print('\nlogin = null:');
  print(nav5);

  // Alternatif dengan multiple conditions
  login = 'Supervisor';
  var nav6 = ['Home', 'Furniture', 'Plants',
              if (login case 'Manager') 'Inventory',
              if (login case 'Supervisor') 'Reports'];
  print('\nlogin = "Supervisor" (with multiple conditions):');
  print(nav6);
}
```

**Output yang dihasilkan:**

```
login = "Manager":
[Home, Furniture, Plants, Inventory]

login = "Employee":
[Home, Furniture, Plants]

login = "Admin":
[Home, Furniture, Plants]

login = null:
[Home, Furniture, Plants]

login = "Supervisor" (with multiple conditions):
[Home, Furniture, Plants, Reports]
```

**Penjelasan Pattern Matching:**

- `if (login case 'Manager')` menggunakan case pattern matching
- Hanya menambahkan 'Inventory' jika `login` exactly equals 'Manager'
- Kondisi lain ('Employee', 'Admin', null) tidak memenuhi pattern
- Lebih powerful dari simple if karena mendukung complex pattern matching
- Bisa dikombinasikan dengan multiple conditions

#### Langkah 6

**Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.**

```dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```

![](./img/praktikum4_step6.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.**

**Penjelasan:**

1. **Collection For Syntax:**

   ```dart
   var listOfInts = [1, 2, 3];
   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
   ```

2. **Proses Eksekusi:**

   - Dimulai dengan `['#0']`
   - Loop `for (var i in listOfInts)` iterasi melalui `[1, 2, 3]`
   - Setiap iterasi menambahkan `'#$i'`:
     - i = 1 → tambah `'#1'`
     - i = 2 → tambah `'#2'`
     - i = 3 → tambah `'#3'`
   - Hasil akhir: `['#0', '#1', '#2', '#3']`

3. **Assert Statement:**
   ```dart
   assert(listOfStrings[1] == '#1');  // ✅ Berhasil (index 1 = '#1')
   ```

**Output yang dihasilkan:**

```
[#0, #1, #2, #3]
```

**Tidak ada error** karena semua sintaks benar dan assert condition terpenuhi.

**Contoh Extended dengan NIM:**

```dart
void main() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print('Basic collection for: $listOfStrings');

  // Extended example dengan NIM
  var nimDigits = [2, 3, 4, 1, 7, 2, 0, 1, 1, 2]; // 2341720112
  var formattedNim = ['NIM:', for (var digit in nimDigits) 'D$digit'];
  print('Formatted NIM: $formattedNim');

  // Collection for dengan condition
  var evenNumbers = [for (var i in listOfInts) if (i % 2 == 0) i];
  print('Even numbers: $evenNumbers');

  // Collection for dengan transformation
  var squares = ['Squares:', for (var i in listOfInts) '${i}²=${i*i}'];
  print('Squares: $squares');
}
```

**Output Extended:**

```
Basic collection for: [#0, #1, #2, #3]
Formatted NIM: [NIM:, D2, D3, D4, D1, D7, D2, D0, D1, D1, D2]
Even numbers: [2]
Squares: [Squares:, 1²=1, 2²=4, 3²=9]
```

**Manfaat Collection For:**

1. **Sintaks Ringkas:**

   - Lebih singkat dari `list.map()` atau loop manual
   - Intuitive dan readable

2. **Flexible:**

   - Bisa dikombinasikan dengan condition (`if`)
   - Mendukung transformasi data on-the-fly
   - Bisa digunakan di List, Set, Map

3. **Performance:**

   - Efficient karena built-in ke Dart compiler
   - Tidak perlu intermediate collections

4. **Functional Programming:**
   - Mendukung paradigma functional
   - Immutable approach untuk data transformation

**Dokumentasi Laporan:**

- **Collection For** memberikan cara deklaratif untuk membangun collections
- **Spread Operators** memungkinkan penggabungan multiple collections
- **Collection If** membuat collections dinamis berdasarkan kondisi
- **Pattern Matching** memberikan control flow yang powerful
- Semua fitur ini membuat Dart code lebih expressive dan maintainable

### Praktikum 5: Eksperimen Tipe Data Records

**Catatan:** Tipe data Records mulai diperkenalkan pada Dart versi 3.0. Pastikan Anda sudah setup menggunakan Dart 3.0 atau yang lebih baru.

#### Langkah 1

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record)
}
```

#### Langkah 2

**Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.**

![](./img/praktikum5_step2.png)

**Penjelasan:**

1. **Deklarasi Record:**

   ```dart
   var record = ('first', a: 2, b: true, 'last');
   ```

   Record ini memiliki:

   - 2 positional fields: `'first'` (index 0) dan `'last'` (index 1)
   - 2 named fields: `a: 2` dan `b: true`

2. **Print Statement:**
   ```dart
   print(record)  // ❌ Missing semicolon
   ```

**Error yang terjadi:**

```
Error: Expected ';' after this.
```

**Perbaikan yang diperlukan:**
Tambahkan semicolon (`;`) setelah statement print.

**Kode yang diperbaiki:**

```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);  // ✅ Ditambahkan semicolon
}
```

**Output setelah perbaikan:**

```
(first, last, a: 2, b: true)
```

**Penjelasan Record Structure:**

- Records adalah tipe data immutable yang mengelompokkan beberapa nilai
- Positional fields diakses dengan `$1`, `$2`, dst.
- Named fields diakses dengan nama fieldnya (`.a`, `.b`)
- Dart 3.0+ mendukung record literals dengan syntax `(value1, name: value2)`

#### Langkah 3

**Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.**

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Menggunakan fungsi tukar()
  var beforeSwap = (1, 2);
  print('Before swap: $beforeSwap');

  var afterSwap = tukar(beforeSwap);
  print('After swap: $afterSwap');
}
```

![](./img/praktikum5_step3.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.**

**Penjelasan:**

1. **Function Signature:**

   ```dart
   (int, int) tukar((int, int) record)
   ```

   - Parameter: Record dengan 2 int (`(int, int)`)
   - Return type: Record dengan 2 int (`(int, int)`)

2. **Destructuring Assignment:**

   ```dart
   var (a, b) = record;  // Destructuring record ke variabel a dan b
   ```

3. **Proses dalam main():**
   ```dart
   var beforeSwap = (1, 2);           // Record awal
   var afterSwap = tukar(beforeSwap); // Memanggil fungsi tukar
   ```

**Tidak ada error**, function berjalan dengan baik.

**Output yang dihasilkan:**

```
(first, last, a: 2, b: true)
Before swap: (1, 2)
After swap: (2, 1)
```

**Extended example dengan NIM:**

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Test dengan angka sederhana
  var beforeSwap = (1, 2);
  print('Before swap: $beforeSwap');
  var afterSwap = tukar(beforeSwap);
  print('After swap: $afterSwap');

  // Test dengan digit NIM
  var nimDigits = (23, 41);  // Dua digit pertama dari 2341720112
  print('\nNIM digits before swap: $nimDigits');
  var swappedNim = tukar(nimDigits);
  print('NIM digits after swap: $swappedNim');

  // Multiple swaps
  var result1 = tukar((7, 20));
  var result2 = tukar(result1);
  print('\nMultiple swaps: (7,20) -> $result1 -> $result2');
}
```

**Extended Output:**

```
(first, last, a: 2, b: true)
Before swap: (1, 2)
After swap: (2, 1)

NIM digits before swap: (23, 41)
NIM digits after swap: (41, 23)

Multiple swaps: (7,20) -> (20, 7) -> (7, 20)
```

#### Langkah 4

**Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.**

```dart
void main() {
  // Previous code...

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  print(mahasiswa);
}
```

![](./img/praktikum5_step4.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!**

**Error yang terjadi:**

```
Error: Non-nullable variable 'mahasiswa' must be assigned before it can be used.
```

**Perbaikan yang diperlukan:**
Variable `mahasiswa` dideklarasikan tapi tidak diinisialisasi. Perlu diberi nilai atau dibuat nullable.

**Kode yang diperbaiki:**

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var beforeSwap = (1, 2);
  print('Before swap: $beforeSwap');
  var afterSwap = tukar(beforeSwap);
  print('After swap: $afterSwap');

  // ✅ Perbaikan: Inisialisasi dengan nama dan NIM
  (String, int) mahasiswa = ('Vidi Joshubzky Saviola', 2341720112);
  print('Mahasiswa: $mahasiswa');

  // Alternative declaration methods
  var mahasiswa2 = ('Vidi Joshubzky Saviola', 2341720112);
  (String, int) mahasiswa3;
  mahasiswa3 = ('Vidi Joshubzky Saviola', 2341720112);

  print('Mahasiswa2: $mahasiswa2');
  print('Mahasiswa3: $mahasiswa3');

  // Accessing individual fields
  print('\n=== ACCESSING FIELDS ===');
  print('Nama: ${mahasiswa.$1}');
  print('NIM: ${mahasiswa.$2}');
}
```

**Output yang dihasilkan:**

```
(first, last, a: 2, b: true)
Before swap: (1, 2)
After swap: (2, 1)
Mahasiswa: (Vidi Joshubzky Saviola, 2341720112)
Mahasiswa2: (Vidi Joshubzky Saviola, 2341720112)
Mahasiswa3: (Vidi Joshubzky Saviola, 2341720112)

=== ACCESSING FIELDS ===
Nama: Vidi Joshubzky Saviola
NIM: 2341720112
```

**Dokumentasi Laporan:**

1. **Record Type Annotation:**

   - `(String, int)` mendefinisikan record dengan String di posisi 1, int di posisi 2
   - Type annotation memberikan type safety dan clarity

2. **Initialization Methods:**

   - Direct: `(String, int) mahasiswa = (nama, nim);`
   - Inference: `var mahasiswa2 = (nama, nim);`
   - Separate: declare then assign

3. **Field Access:**
   - Positional fields: `$1`, `$2`, `$3`, dst.
   - Type-safe access berdasarkan posisi

#### Langkah 5

**Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.**

```dart
void main() {
  // Previous code...

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```

![](./img/praktikum5_step5.png)

**Apa yang terjadi? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!**

**Penjelasan:**

1. **Record Structure:**

   ```dart
   var mahasiswa2 = ('first', a: 2, b: true, 'last');
   ```

   - `$1` (positional 1): `'first'`
   - `$2` (positional 2): `'last'`
   - `.a` (named): `2`
   - `.b` (named): `true`

2. **Field Access Methods:**
   - `$1`, `$2`: Positional field access
   - `.a`, `.b`: Named field access

**Tidak ada error**, semua syntax benar untuk Dart 3.0+.

**Modifikasi dengan Nama dan NIM:**

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print('Original record: $record');

  var beforeSwap = (1, 2);
  var afterSwap = tukar(beforeSwap);
  print('Swap example: $beforeSwap -> $afterSwap');

  (String, int) mahasiswa = ('Vidi Joshubzky Saviola', 2341720112);
  print('Typed record: $mahasiswa');

  // ✅ Modified record dengan nama dan NIM
  var mahasiswa2 = ('Vidi Joshubzky Saviola', a: 2341720112, b: true, 'Mobile Programming');

  print('\n=== FIELD ACCESS EXAMPLES ===');
  print('mahasiswa2.\$1 (Nama): ${mahasiswa2.$1}');
  print('mahasiswa2.a (NIM): ${mahasiswa2.a}');
  print('mahasiswa2.b (Status): ${mahasiswa2.b}');
  print('mahasiswa2.\$2 (Mata Kuliah): ${mahasiswa2.$2}');

  // Additional examples with different field combinations
  var profile = ('Student', semester: 5, active: true, 'Politeknik Negeri Malang');

  print('\n=== PROFILE RECORD ===');
  print('Status: ${profile.$1}');
  print('Semester: ${profile.semester}');
  print('Active: ${profile.active}');
  print('Institution: ${profile.$2}');

  // Mixed type record
  var mixedRecord = (2341720112, name: 'Vidi Joshubzky Saviola', gpa: 3.8, 'Teknik Informatika');

  print('\n=== MIXED TYPE RECORD ===');
  print('NIM (int): ${mixedRecord.$1}');
  print('Name (String): ${mixedRecord.name}');
  print('GPA (double): ${mixedRecord.gpa}');
  print('Program (String): ${mixedRecord.$2}');
}
```

**Output yang dihasilkan:**

```
Original record: (first, last, a: 2, b: true)
Swap example: (1, 2) -> (2, 1)
Typed record: (Vidi Joshubzky Saviola, 2341720112)

=== FIELD ACCESS EXAMPLES ===
mahasiswa2.$1 (Nama): Vidi Joshubzky Saviola
mahasiswa2.a (NIM): 2341720112
mahasiswa2.b (Status): true
mahasiswa2.$2 (Mata Kuliah): Mobile Programming

=== PROFILE RECORD ===
Status: Student
Semester: 5
Active: true
Institution: Politeknik Negeri Malang

=== MIXED TYPE RECORD ===
NIM (int): 2341720112
Name (String): Vidi Joshubzky Saviola
GPA (double): 3.8
Program (String): Teknik Informatika
```

**Dokumentasi Laporan:**

1. **Record Field Access:**

   - **Positional**: `$1`, `$2`, `$3` (1-indexed)
   - **Named**: `.fieldName` (custom names)
   - **Mixed**: Dapat kombinasi positional dan named

2. **Type Flexibility:**

   - Records dapat menyimpan berbagai tipe data
   - Mixed types dalam satu record: `int`, `String`, `double`, `bool`

3. **Real-world Usage:**

   - **Student Profile**: Nama, NIM, status, institusi
   - **Academic Record**: Data akademik dengan named fields
   - **Function Returns**: Mengembalikan multiple values

4. **Advantages Records:**

   - **Immutable**: Data tidak bisa diubah setelah dibuat
   - **Type Safety**: Compile-time type checking
   - **Destructuring**: Easy unpacking dengan pattern matching
   - **Performance**: Efficient memory usage
   - **Readability**: Clear data structure

5. **Use Cases:**
   - Returning multiple values from functions
   - Grouping related data temporarily
   - API response parsing
   - Configuration objects
   - Coordinate systems (x, y, z)

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