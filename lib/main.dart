import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M14/praktek/providers/product_provider.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M14/praktek/screens/product_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // tambahkan class provider lain disini
      ChangeNotifierProvider(create: (context) => ProductProvider()),
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
      home: ProductScreen(),
    );
  }
}
