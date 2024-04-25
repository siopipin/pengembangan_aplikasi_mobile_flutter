import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M04/praktek/widget_basic.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M04/teori/box_widget.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M04/teori/text_widget.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M05/praktek/ig_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M05/praktek/instagram_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M05/teori/layout.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/praktek/auth_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/login_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/news_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/test/auth2_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/myMenu/login_myMenu.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/login_ujian.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/teori/counter_screen.dart';

void main() {
  runApp(const MyApp());
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
      home: LoginExamPage(),
    );
  }
}
