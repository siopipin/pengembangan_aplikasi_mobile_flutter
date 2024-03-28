import 'package:flutter/material.dart';

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  String nama = "Chairulla";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TI-A Sore/Pagi"),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          children: [
            //baris ke1
            //2 balok
            Row(
              children: [
                customContainer(color: Colors.blue, lebar: 100),
                customContainer(color: Colors.red, tinggi: 350, lebar: 100),
              ],
            ),

            //baris k2
            //text
          ],
        ));
  }

  Widget customContainer({
    required Color color,
    double tinggi = 200,
    required double lebar,
  }) {
    return Container(
      margin: EdgeInsets.only(right: 30.0),
      color: color,
      height: tinggi,
      width: lebar,
    );
  }
}
