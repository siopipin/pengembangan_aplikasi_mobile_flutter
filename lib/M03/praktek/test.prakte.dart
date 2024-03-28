void main() async {
  dynamic hTiket = 40000.00;

  try {
    bool isPaid = await beliTiket(statusbayar: false);

    if (isPaid == true) {
      print("berhasil bayar");
    } else {
      throw 'belum bayar';
    }
  } on Exception catch (e) {
    print(e);
  }
}

Future<bool> beliTiket({required bool statusbayar}) async {
  try {
    bool status = await Future.delayed(Duration(seconds: 4), () => statusbayar);
    if (status == true) {
      return true;
    } else {
      throw 'Tidak mau bayar';
    }
  } catch (e) {
    throw e;
  }
}
