import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/gallery_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/providers/book_provider.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/providers/mylist_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // tambahkan class provider lain disini
      ChangeNotifierProvider(create: (context) => MyListProvider()),
      ChangeNotifierProvider(create: (context) => BookProvider()),
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
      home: GalleryScreen(),
    );
  }
}
