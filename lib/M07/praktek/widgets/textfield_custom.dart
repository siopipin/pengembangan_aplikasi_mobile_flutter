import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  TextEditingController ctrl;
  bool isObscureText;
  String label;
  TextFieldCustom({
    super.key,
    required this.ctrl,
    required this.label,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: ctrl,
        obscureText: isObscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }
}
