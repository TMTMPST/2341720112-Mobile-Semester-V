void main() {
  print("--- Langkah 1 ---");
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print("list: $list");
  print("list2: $list2");
  print("list2.length: ${list2.length}");

  // LANGKAH 3: Null-aware Spread Operator
  print("\n--- Langkah 3 ---");
  List<int?> list1 = [1, 2, null]; // Definisikan sebagai nullable list
  print("list1: $list1");
  var list3 = [0, ...list1]; // Karena list1 tidak null, gunakan spread biasa
  print("list3.length: ${list3.length}");

  // Contoh dengan null-aware spread operator
  List<int>? nullableList = null;
  var list4 = [0, ...?nullableList]; // null-aware spread diperlukan di sini
  print("list4 (dengan null-aware): $list4");

  // Tambahkan variabel list berisi NIM menggunakan Spread Operators
  var nim = ['2', '3', '4', '1', '7', '2', '0', '1', '1', '2'];
  var listWithNIM = [...list, ...nim];
  print("nim: $nim");
  print("listWithNIM: $listWithNIM");

  // LANGKAH 4: Conditional Elements
  print("\n--- Langkah 4 ---");

  // Function untuk demo conditional elements
  List<String> createNav(bool promoActive) {
    return ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  }

  print("Test promoActive = true:");
  var navTrue = createNav(true);
  print("nav: $navTrue");

  print("Test promoActive = false:");
  var navFalse = createNav(false);
  print("nav: $navFalse");

  // LANGKAH 5: Case Pattern Matching
  print("\n--- Langkah 5 ---");

  // Test dengan login = 'Manager'
  String login = 'Manager';
  var navManager = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print("nav (login='Manager'): $navManager");

  // Test dengan login = 'Employee'
  login = 'Employee';
  var navEmployee = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print("nav (login='Employee'): $navEmployee");

  // Test dengan login = 'Guest'
  login = 'Guest';
  var navGuest = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print("nav (login='Guest'): $navGuest");

  // LANGKAH 6: Collection For
  print("\n--- Langkah 6 ---");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print("listOfInts: $listOfInts");
  print("listOfStrings: $listOfStrings");

  print("\n=== DOKUMENTASI HASIL ===");
  print(
    "1. Spread Operator (...) memungkinkan penyebaran elemen dari satu collection ke collection lain",
  );
  print(
    "2. Null-aware Spread Operator (...?) aman digunakan dengan nilai null",
  );
  print(
    "3. Conditional elements (if) memungkinkan penambahan elemen berdasarkan kondisi",
  );
  print(
    "4. Case pattern matching memungkinkan penambahan elemen berdasarkan pola tertentu",
  );
  print("5. Collection For memungkinkan pembuatan elemen dengan iterasi");
}
