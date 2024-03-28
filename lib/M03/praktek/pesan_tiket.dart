const double hargaTiket = 50000.00;
void main() async {
  try {
    bool isPaid = await bookingTiket(60000.00);
    await konfirmasiPembayaran(bayar: isPaid);
    await cetakTiket(bayarValid: isPaid);
  } catch (e) {
    print(e);
  }
}

// Fungsi untuk melakukan booking tiket dengan parameter nilai uang yang dibayarkan
Future<bool> bookingTiket(dynamic duit) async {
  bool _bookingStatus = false;

  // Memeriksa apakah nilai uang yang dibayarkan merupakan double atau integer
  if (duit is double || duit is int) {
    // Menunggu hasil dari Future.delayed selama 5 detik
    _bookingStatus = await Future.delayed(const Duration(seconds: 5), () {
      // Memeriksa apakah nilai uang yang dibayarkan sama dengan harga tiket
      if (duit == hargaTiket) {
        print("Pembayaran Berhasil, uang kembali: 0");
        return true;
      }
      // Jika nilai uang yang dibayarkan lebih besar dari harga tiket
      else if (duit > hargaTiket) {
        double kembali = duit - hargaTiket;
        print("Pembayaran Berhasil, uang kembali $kembali");
        return true;
      }
      // Jika nilai uang yang dibayarkan kurang dari harga tiket
      else {
        print("Maaf, pembayaran anda kurang");
        return false;
      }
    });
  }
  // Jika nilai uang yang dibayarkan bukan double atau integer, lempar exception
  else {
    throw Exception('Maaf, nominal pembayaran harus berupa angka');
  }

  return _bookingStatus;
}

// Fungsi untuk melakukan konfirmasi pembayaran dengan parameter opsional 'bayar' yang harus diisi
Future<void> konfirmasiPembayaran({required bool bayar}) async {
  // Menunggu hasil dari Future.delayed selama 3 detik dengan nilai 'bayar'
  bool _telahBayar = await Future.delayed(Duration(seconds: 3), () => bayar);

  // Jika pembayaran belum diterima, lempar exception
  if (!_telahBayar) {
    throw Exception('Maaf, pembayaran anda belum kami terima');
  }

  // Jika pembayaran diterima, cetak pesan pembayaran berhasil
  print('Pembayaran Berhasil');
}

cetakTiket({required bool bayarValid}) {
  if (bayarValid) {
    print('Selamat, tiket berhasil dicetak');
  } else {
    print('Maaf, pembayaran anda belum kami terima');
  }
}
