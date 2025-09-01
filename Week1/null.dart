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