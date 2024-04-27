import 'package:flutter/material.dart';

class TextFieldCustom2 extends StatelessWidget {
  String label;
  TextEditingController ctrl;
  TextFieldCustom2({
    super.key,
    this.label = "Username",
    required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctrl,
      decoration: InputDecoration(label: Text(label)),
    );
  }
}
