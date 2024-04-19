import 'package:flutter/material.dart';

class Home2Screen extends StatelessWidget {
  const Home2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(children: [
          ListTile(
            leading: Image.network('https://picsum.photos/100'),
            title: Text("Berita Utama"),
            subtitle: Text("Hallo"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          )
        ]),
      ),
    );
  }
}
