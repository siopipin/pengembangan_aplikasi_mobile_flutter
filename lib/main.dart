import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/crud_example/book_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/counter_nonprov_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/counter_prov_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/providers/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // tambahkan class provider lain disini
      ChangeNotifierProvider(create: (context) => CounterProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterProvScreen(),
    );
  }
}
