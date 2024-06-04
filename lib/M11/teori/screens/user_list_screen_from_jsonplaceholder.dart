import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserListPlaceHolderScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListPlaceHolderScreen> {
  List<dynamic> userList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await Future.delayed(Duration(seconds: 5), () async {
        return await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      });

      if (response.statusCode == 200) {
        setState(() {
          userList = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(userList[index]['name']),
            subtitle: Text(userList[index]['email']),
          );
        },
      ),
    );
  }
}
