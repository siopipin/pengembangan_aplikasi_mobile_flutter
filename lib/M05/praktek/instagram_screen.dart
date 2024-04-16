import 'package:flutter/material.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Bagian Post Instagram.
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //row ke-1
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/logo_dicoding.jpeg'),
                            ),
                          ),
                          // cari sendiri link logo dicoding di google
                        ),
                        Text(
                          "dicoding",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/images/centang.png',
                          width: 20,
                        ),
                      ],
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu_rounded),
                    ),
                  ],
                ),
              ),

              //row ke-2
              Image.asset('assets/images/post1.jpg'),

              //Row ke-3
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.heart_broken_outlined,
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.comment,
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.send,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),

              //Row ke-4
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user.jpg'),
                            maxRadius: 15,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "Liked by "),
                              TextSpan(
                                text: "TI-A Sore ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: "and "),
                              TextSpan(
                                text: "others",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "Dicoding ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                TextSpan(
                                    text:
                                        "Kuota pendaftaran digital talent scholarship 2024 hampir terpenuhi! "),
                                TextSpan(text: "... moere"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "View all 10 comments",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user.jpg'),
                            maxRadius: 25,
                          ),
                        ),
                        Text(
                          "Add a comments",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
