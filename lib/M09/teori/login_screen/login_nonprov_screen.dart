import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/widgets/button_custom.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/providers/login_provider.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/widgets/button_custom.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/widgets/name_widget.dart';
import 'package:provider/provider.dart';

class LoginNonProvScreen extends StatefulWidget {
  const LoginNonProvScreen({super.key});

  @override
  State<LoginNonProvScreen> createState() => _LoginNonProvScreenState();
}

class _LoginNonProvScreenState extends State<LoginNonProvScreen> {
  String _namaKasir = "-";
  bool isNamed = false;

  @override
  Widget build(BuildContext context) {
    final logic = context.watch<LoginProvider>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(isNamed ? _namaKasir : "null"),
            NameWidget(name: isNamed ? _namaKasir : 'null2'),

            Divider(),
            Text(logic.nameProv),

            //tombol ini pisahkan, jadikan widget.
            ButtonCustom2(title: "Ganti Nama2"),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isNamed = true;
                    _namaKasir = "Budi";
                  });
                },
                child: Text("Ganti Kasir"))
          ],
        ),
      ),
    );
  }
}
