import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            //baris 1
            Row(
              children: [
                // item ke 1 bungkus dengan column
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 150,
                  child: Container(
                      height: 500,
                      width: 500,
                      color: Colors.grey,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("text1"),
                          Icon(Icons.people),
                        ],
                      )),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  child: Text("text2"),
                ),
                Text("TI-A"),

                Column(
                  children: [
                    Text("textA"),
                    Text("text3"),
                  ],
                ),
              ],
            ),

            //baris 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.circle,
                  size: 100,
                ),
                Text("TI-A Pagi")
              ],
            ),

            //baris 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 100),
                Expanded(
                  child: Image.network(
                      'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg'),
                )
              ],
            ),

            //baris 4
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 120,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Makan sate 50 porsi gratis 20 porsi lagi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Karena ditolak mantan")
                      ],
                    ),
                  ),
                  Icon(
                    Icons.heart_broken,
                    weight: 80,
                    color: Colors.red,
                  )
                ],
              ),
            ), //baris 1
            Row(
              children: [
                // item ke 1 bungkus dengan column
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 150,
                  child: Container(
                      height: 500,
                      width: 500,
                      color: Colors.grey,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("text1"),
                          Icon(Icons.people),
                        ],
                      )),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  child: Text("text2"),
                ),
                Text("TI-A"),

                Column(
                  children: [
                    Text("textA"),
                    Text("text3"),
                  ],
                ),
              ],
            ),

            //baris 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.circle,
                  size: 100,
                ),
                Text("TI-A Pagi")
              ],
            ),

            //baris 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 100),
                Expanded(
                  child: Image.network(
                      'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg'),
                )
              ],
            ),

            //baris 4
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.network(
                    'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/14053934/Mudah-Dibuat-di-Rumah-Ini-Resep-Sate-Ayam-Bumbu-Kacang-yang-Lezat-.jpg',
                    width: 120,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Makan sate 50 porsi gratis 20 porsi lagi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Karena ditolak mantan")
                      ],
                    ),
                  ),
                  Icon(
                    Icons.heart_broken,
                    weight: 80,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
