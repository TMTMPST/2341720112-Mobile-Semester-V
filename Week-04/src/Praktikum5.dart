// Function untuk tukar record (Langkah 3)
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {

  print("\n--- Records Langkah 1 ---");
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  print("\n--- Records Langkah 2 ---");
  print("Kode pada Langkah 1 berjalan tanpa error.");
  print(
    "Record adalah fitur baru di Dart yang memungkinkan pengelompokan data heterogen.",
  );

  print("\n--- Records Langkah 3 ---");
  var originalRecord = (5, 10);
  print("Original record: $originalRecord");
  var swappedRecord = tukar(originalRecord);
  print("Swapped record: $swappedRecord");

  print("\n--- Records Langkah 4 ---");
  (String, int) mahasiswa = ('Vidi Joshubzky Saviola', 2341720112);
  print("Mahasiswa record: $mahasiswa");

  print("\n--- Records Langkah 5 ---");
  var mahasiswa2 = (
    'Vidi Joshubzky Saviola',
    a: 2341720112,
    b: true,
    'Politeknik Negeri Malang',
  );

  print("mahasiswa2.\$1: ${mahasiswa2.$1}"); 
  print("mahasiswa2.a: ${mahasiswa2.a}"); 
  print("mahasiswa2.b: ${mahasiswa2.b}"); 
  print(
    "mahasiswa2.\$2: ${mahasiswa2.$2}",
  );

}
