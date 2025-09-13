void main() {
  var halogens = ['fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'];
  print(halogens);

  var names1 = <String>[];
  Set<String> names2 = {};
  var names3 = <String>{};

  // Menambahkan nama dan NIM ke Set names2 menggunakan .add()
  names2.add("Vidi Joshubzky Saviola");
  names2.add("2341720112");

  // Menambahkan nama dan NIM ke Set names3 menggunakan .addAll()
  names3.addAll(["Vidi Joshubzky Saviola", "2341720112"]);

  print("names1 (List): $names1");
  print("names2 (Set with .add()): $names2");
  print("names3 (Set with .addAll()): $names3");
}
