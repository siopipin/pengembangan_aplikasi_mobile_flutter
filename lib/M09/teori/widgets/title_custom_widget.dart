import 'package:flutter/material.dart';

class TitleCustomWidget extends StatelessWidget {
  final String name;
  const TitleCustomWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
