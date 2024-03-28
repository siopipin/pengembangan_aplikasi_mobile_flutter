import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "data",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.red[800],
      height: 300,
      width: 300,
    );
  }
}
