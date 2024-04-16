import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/news_screen.dart';

class LoginScreenM06 extends StatelessWidget {
  const LoginScreenM06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text("Username"),
        Text("password"),
        ElevatedButton(
            onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
                (route) => false),
            child: Text("Login"))
      ]),
    );
  }
}
