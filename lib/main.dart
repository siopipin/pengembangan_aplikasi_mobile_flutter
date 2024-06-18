import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/praktek/controllers/hero_provider.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M10/praktek/views/hero_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M11/teori/screens/mhs_list.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M11/teori/screens/user_list_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M11/teori/screens/user_list_screen_from_jsonplaceholder.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M13/teori/login_m13_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // tambahkan class provider lain disini
      ChangeNotifierProvider(create: (context) => HeroProvider()),
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
      home: LoginM13Screen(),
    );
  }
}
