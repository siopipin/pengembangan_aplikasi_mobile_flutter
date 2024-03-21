rebusMie() {
  //5 detik untuk merespon
  return Future.delayed(Duration(seconds: 5), () => "mie sedang direbus");
}

sajikanMie() {
  //2 detik
  print("sajikan mie di piring");
}

makanMie() {
  //10 detik
  print('selesai makan mie');
}

bayar() {
  //1 detik
  print('sedang melakukan pembayaran');
  return true;
}

pulangKerumah() {
  print("Rangga pulang ke rumah");
}

void main() async {
  try {
    print(await rebusMie());
    sajikanMie();
    makanMie();
    bool statusBayar = await bayar();
    if (statusBayar == true) {
      pulangKerumah();
    } else {
      throw 'Panggil security';
    }
  } catch (e) {
    print(e);
  }
}
