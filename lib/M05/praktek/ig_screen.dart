import 'package:flutter/material.dart';

class IgScreen extends StatefulWidget {
  const IgScreen({super.key});

  @override
  State<IgScreen> createState() => _IgScreenState();
}

class _IgScreenState extends State<IgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // post instagram.
          Column(
            children: [
              // row 1
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      //item1
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/logo_dicoding.jpeg'))),
                      ),
                      //item2
                      Text("Dicoding"),
                    ],
                  )),

                  //item 3
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                ],
              ),
              // row 2
              Image.asset('assets/images/post1.jpg')
              // row 3
              // Row r
            ],
          )
        ],
      ),
    );
  }
}
