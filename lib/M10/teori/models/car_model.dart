class Car {
  String? brand;
  String? model;
  int? year;

  Car({this.brand, this.model, this.year});

  filterCar() {
    // logika untuk filter mobil yang muat di garasi
    // garasi 21 x 20 m
    // maka yang bisa masuk disini cuma mobil LCGC, truk / container tidak boleh masuk.
    if (model == 'LCGC') {
      print('Mobil ini muat di garasi');
    } else {
      print('Mobil ini tidak muat di garasi');
    }
  }

  void startEngine() {
    if (brand == 'Tesla') {
      print('Starting the engine...');
      print('Suara: Whussssssssss');
    } else if (brand == 'Toyota') {
      print('Starting the engine...');
      print('Suara: Brum brum brum');
    } else {
      print('Starting the engine...');
      print('Suara: Vroom vroom vroom');
    }
  }
}
