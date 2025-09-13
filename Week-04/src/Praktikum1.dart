void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;

  // Langkah 1: Membuat variabel final dengan index = 5 dan default value = null
  final List<String?> list = List<String?>.filled(5, null);

  list[1] = "Vidi Joshubzky Saviola";
  list[2] = "2341720112";

  print("Length of list: ${list.length}");
  print("Element at index 1: ${list[1]}");
  print("Element at index 2: ${list[2]}");
  print("Full list: $list");
}


