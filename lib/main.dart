import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/teori/controllers/car_controller.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/teori/views/car_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // tambahkan class provider lain disini
      ChangeNotifierProvider(create: (context) => CarController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CarView(),
    );
  }
}
