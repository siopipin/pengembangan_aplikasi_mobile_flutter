import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/test/home2_screen.dart';

class Auth2Screen extends StatelessWidget {
  const Auth2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          // textfield username
          TextField(
            controller: userCtrl,
            decoration: InputDecoration(labelText: "Username"),
          ),

          // tombol
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home2Screen()));
              },
              child: Text("Login"))
        ]),
      ),
    );
  }
}
