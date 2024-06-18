import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListUserM13Screen extends StatefulWidget {
  @override
  _ListUserM13ScreenState createState() => _ListUserM13ScreenState();
}

class _ListUserM13ScreenState extends State<ListUserM13Screen> {
  List<User> users = [
    User(1, 'John Doe', 'johndoe@example.com', '123 Main St'),
    User(2, 'Jane Smith', 'janesmith@example.com', '456 Elm St'),
    User(3, 'Bob Johnson', 'bobjohnson@example.com', '789 Oak St'),
  ];

  List<dynamic> kumpulanUser = [];
  @override
  void initState() {
    super.initState();
    doGetListUser();
  }

  doGetListUser() async {
    var url = 'http://localhost:3001/web/users';
    var respons = await http.get(Uri.parse(url));

    print(respons.statusCode);
    print(respons.body);
    if (respons.statusCode == 200) {
      setState(() {
        var dataTmp = json.decode(respons.body);
        kumpulanUser = dataTmp['results'];

        print(kumpulanUser[0]['name']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List User'),
      ),
      body: ListView.separated(
        itemCount: kumpulanUser.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          var user = kumpulanUser[index];
          return ListTile(
            title: Text('ID: ${user['id']}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${user['name']}'),
                Text('Email: ${user['email']}'),
                Text('Address: ${user['address']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;
  final String address;

  User(this.id, this.name, this.email, this.address);
}
