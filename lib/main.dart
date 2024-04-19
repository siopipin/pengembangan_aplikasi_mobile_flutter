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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Auth2Screen(),
    );
  }
}
