import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MHSList extends StatefulWidget {
  const MHSList({super.key});

  @override
  State<MHSList> createState() => _MHSListState();
}

class _MHSListState extends State<MHSList> {
  List<dynamic> userlist = [];

  @override
  void initState() {
    super.initState();

    // buat sebuah fungsi untuk memanggil data.
    userList();
  }

  userList() async {
    var respon = await http.get(
        Uri.parse("https://google-news-api1.p.rapidapi.com/search?language=EN"),
        headers: {
          'x-rapidapi-key':
              '2fb4c4f8c3msh1684ba2a7a24622p134f54jsnee879213bf20',
          'x-rapidapi-host': 'google-news-api1.p.rapidapi.com'
        });

    print(respon.statusCode);
    print(respon.body);
    if (respon.statusCode == 200) {
      var data = json.decode(respon.body);
      print(data['news']['total']);
    } else {
      print('lu salah surat');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text("data"));
  }
}
