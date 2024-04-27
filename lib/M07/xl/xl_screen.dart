import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/xl/components/Textfield_custom2.dart';

class XLScreen extends StatefulWidget {
  const XLScreen({super.key});

  @override
  State<XLScreen> createState() => _XLScreenState();
}

class _XLScreenState extends State<XLScreen> {
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  bool statusCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(children: [
            TextFieldCustom2(
              ctrl: ctrlUsername,
            ),
            TextFieldCustom2(
              label: "Password",
              ctrl: ctrlPassword,
            ),
            Row(
              children: [
                Container(
                    width: 100,
                    child: CheckboxListTile(
                        value: statusCheck,
                        onChanged: (val) {
                          print(val);
                          setState(() {
                            statusCheck = val!;
                          });
                          print(statusCheck);
                        })),
                Text("Cek jika kamu setuju")
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  print(ctrlUsername.text);
                },
                child: Text("Login"))
          ]),
        ),
      ),
    );
  }
}
