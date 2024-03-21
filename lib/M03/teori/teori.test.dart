void main() {
  var x = "0"; //user salah input, seharusnya tidak boleh 0

  // aplikasi kalkulator
  try {
    //apa pun error / kesalah yang terjadi disini
    if (x == "0" || x.isEmpty) {
      // throw Exception('x tidak boleh string atau tidak boleh kosong');
      // throw Exception('x tidak boleh string atau tidak boleh kosong');
      throw Exception('x tidak boleh string atau tidak boleh kosong');
    } else {
      print(int.parse(x) + 10);
    }
  } on Exception catch (e) {
    print(e);
  } catch (e) {
    //jika error terjadi, maka akan dijalankan
    //tampilkan pesan error
    //selain menampilkan pesan error, kita bisa menjalan fungsi lainnya.
    //perbaiki angka string menjadi int.
    print(e);
  } finally {
    print("hasil penjumlahan: ${int.parse(x) + 10}");
  }
}
