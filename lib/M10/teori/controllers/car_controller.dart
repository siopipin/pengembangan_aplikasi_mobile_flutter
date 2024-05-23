import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/teori/models/car_model.dart';

class CarController extends ChangeNotifier {
  bool _isLoadCar = false;
  bool get isLoadCar => _isLoadCar;
  set setLoadCar(bool value) {
    _isLoadCar = value;
    notifyListeners();
  }

  List<Car> _car = [];
  List<Car> get carData => _car;
  set setCarDataList(List<Car> value) {
    _car = value;
    notifyListeners();
  }

  Future<void> initialCarList() async {
    try {
      setLoadCar = true;
      await Future.delayed(const Duration(seconds: 3));

      List<Car> cars = [
        Car(brand: 'Toyota', model: 'Truck', year: 2021),
        Car(brand: 'Tesla', model: 'LCGC', year: 2021),
        Car(brand: 'Becak', model: 'Roda 3', year: 2021),
      ];
      setCarDataList = cars;
    } catch (e) {
      // handle error
    } finally {
      setLoadCar = false;
    }
  }

  // memilih mobil
  Car car = Car();
  Car get selectedCar => car;
  bool isCarSelected = false;
  set setCarData(Car value) {
    car = value;
    isCarSelected = true;
    notifyListeners();
  }

  void selectCar({
    required String brand,
    required String model,
    required int year,
  }) {
    setCarData = Car(brand: brand, model: model, year: year);
    notifyListeners();
  }
}
