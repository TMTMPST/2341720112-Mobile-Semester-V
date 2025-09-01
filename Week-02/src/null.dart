void main() {
  String? alamat;
  alamat = null;
  print("Alamat saat ini: $alamat");

  // alamat = "Jalan Merdeka No. 10";
  if (alamat != null) {
    print("Panjang alamat: ${alamat.length}");
  } else {
    print("Alamat tidak diketahui.");
  }
}