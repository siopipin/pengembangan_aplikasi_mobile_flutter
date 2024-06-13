import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/teori/controllers/car_controller.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/teori/models/car_model.dart';
import 'package:provider/provider.dart';

class CarView extends StatefulWidget {
  const CarView({Key? key}) : super(key: key);

  @override
  State<CarView> createState() => _CarViewState();
}

class _CarViewState extends State<CarView> {
  @override
  void initState() {
    super.initState();
    final carController = context.read<CarController>();
    Future.microtask(() {
      carController.initialCarList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final carController = context.watch<CarController>();
    double size = 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car View'),
      ),
      body: Center(
        child: carController.isLoadCar
            ? const CircularProgressIndicator()
            : Column(children: [
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: carController.carData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Car car = carController.carData[index];
                      return GestureDetector(
                        onTap: () {
                          carController.selectCar(
                            brand: car.brand!,
                            model: car.model!,
                            year: car.year!,
                          );
                        },
                        child: Container(
                          width: 220,
                          color: carController.selectedCar.brand == car.brand
                              ? Colors.green[300]
                              : Colors.grey,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/${car.brand!.toLowerCase()}.png',
                                width: size,
                                height: size,
                              ),
                              SizedBox(height: 10),
                              Text(car.brand!),
                              Text(car.model!),
                              Text(car.year.toString()),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Image.network(
                                  'https://picsum.photos/id/$i/200/300'));
                        },
                      );
                    }).toList(),
                  ),
                ),
                const Divider(),
                Expanded(
                  child: carController.isCarSelected
                      ? Column(
                          children: [
                            Text('Selected Car',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Image.asset(
                              'assets/images/${carController.selectedCar.brand!.toLowerCase()}.png',
                              width: size,
                              height: size,
                            ),
                            Text('Brand: ${carController.selectedCar.brand}'),
                            Text('Model: ${carController.selectedCar.model}'),
                            Text('Year: ${carController.selectedCar.year}'),
                          ],
                        )
                      : const Text('No Car Selected'),
                ),
              ]),
      ),
    );
  }
}
