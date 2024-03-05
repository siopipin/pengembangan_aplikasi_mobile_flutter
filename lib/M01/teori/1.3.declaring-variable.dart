void main() {
  // Declared without specifying the type - Infers type
  var jenis = 'Perusahaan';

  // Declared by type
  String namaPresiden = 'Joko widodo';

  // Uninitialized variable has an initial value of null
  String perusahaan;

  // Value will not change
  final namaNegara = 'Indonesia';
  // or
  final String bahasa = 'Bahasa Indonesia';
  // or
  const String laguKebangsaan = 'Indonesia Raya';
  // or
  const String jabatan = 'Presiden' + laguKebangsaan;

  // Public variable (variable name starts without underscore)
  String userName = 'Sandy';
  // Private variable (variable name starts with underscore)
  String _userID = 'XW904';
}
