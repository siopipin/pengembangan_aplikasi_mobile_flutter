import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/login_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/news_detail_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        //list berita 1
        ListTile(
          title: Text("Kepadatan arus Mudik"),
          subtitle: Text(
              "Jalan jamin ginting padat merayat sejak pukul 08.00 dini hari..."),
          trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailScreen(
                      detail:
                          "Jalan jamin ginting padat merayat sejak pukul 08.00 dini hari...",
                      title: "Kepadatan arus Mudik",
                    ),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward_ios)),
        ),

        //list berita 2
        ListTile(
          title: Text("Data Kasus Covid"),
          subtitle: Text("Peningkatan kasus covid 2023..."),
          trailing: IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewsDetailScreen(
                          title: "Data Kasus Covid",
                          detail:
                              "Peningkatan kasus covid 2023 adalah sebagai berikut"))),
              icon: Icon(Icons.arrow_forward_ios)),
        ),

        ElevatedButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginScreenM06()),
              (route) => false),
          child: Text("Logout"),
        )
      ]),
    );
  }
}
