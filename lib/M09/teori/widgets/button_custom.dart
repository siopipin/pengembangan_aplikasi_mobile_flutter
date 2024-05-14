import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/teori/providers/login_provider.dart';
import 'package:provider/provider.dart';

class ButtonCustom2 extends StatelessWidget {
  final String title;
  const ButtonCustom2({super.key, this.title = "Submit"});

  @override
  Widget build(BuildContext context) {
    final x = context.watch<LoginProvider>();

    final y = context.read<LoginProvider>();

    return ElevatedButton(
        onPressed: () {
          x.gantiNama("Zovtan");
        },
        child: x.isLoading ? CircularProgressIndicator() : Text(x.nameProv));
  }
}
