class Pengguna {
  late String deskripsi;

  void setDeskripsi(String nama, int umur) {
    print("Sedang mengatur deskripsi...");
    this.deskripsi = "Pengguna bernama $nama, berumur $umur tahun.";
  }
}

void main() {
  var pengguna = Pengguna();
  pengguna.setDeskripsi("Ana", 25);
  print(pengguna.deskripsi);
}