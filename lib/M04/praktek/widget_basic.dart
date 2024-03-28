import 'package:flutter/material.dart';

class WidgetBasic extends StatelessWidget {
  const WidgetBasic({super.key});

  @override
  Widget build(BuildContext context) {
    // hapus container, ganti dengan scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Mobile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Baris 1"),

          // setelah koma (,) tambahkan widget container berwarna merah

          // setelah koma (,) tambahkan widget Icon

          // setelah koma (,) tambahkan widget Button

          // setelah koma (,) tambahkan widget Images
        ],
      ),
    );
  }
}
