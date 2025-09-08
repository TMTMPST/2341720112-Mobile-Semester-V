void main() {
  for (int i = 0; i <= 201; i++) {
    bool isPrime = false;

    if (i > 1) {
      isPrime = true;
      for (int j = 2; j <= i / 2; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print("Bilangan prima ditemukan : $i");
      print("Nama : Vidi Joshubzky Saviola");
      print("NIM : 2341720112");
      print(""); // Baris kosong untuk pemisah
    } else {
      print(i);
    }
  }
}
