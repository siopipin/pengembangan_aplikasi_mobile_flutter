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
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text("Budi"),
            ),
          ),

          // setelah koma (,) tambahkan widget Icon
          Icon(Icons.home, size: 100, color: Colors.green),

          // setelah koma (,) tambahkan widget Button
          ElevatedButton(
            child: Text("Simpan"),
            onPressed: () {
              //tambahkan logic disini
              print("Simpan");
            },
          ),

          // setelah koma (,) tambahkan widget Images
          Image.asset('assets/images/logo.jpeg')
        ],
      ),
    );
  }
}
