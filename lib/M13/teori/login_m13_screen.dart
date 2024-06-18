import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pengembangan_aplikasi_mobile_flutter/M13/teori/list_user_m13_screen.dart';

class LoginM13Screen extends StatefulWidget {
  @override
  _LoginM13ScreenState createState() => _LoginM13ScreenState();
}

class _LoginM13ScreenState extends State<LoginM13Screen> {
  TextEditingController _idController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  var _token = "";
  var _data = "";
  var _id = "";
  bool isLogged = false;

  // http post untuk login
  doLogin({required String id, required String password}) async {
    print('do Login $id $password');
    var url = 'http://localhost:3001/web/auth/login';
    var response = await http.post(
      Uri.parse(url),
      body: {
        "id": id,
        "password": password,
      },
    );

    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var dataTemp = json.decode(response.body);
      setState(() {
        _token = response.body;
        _data = dataTemp['token'];
        isLogged = true;
      });
    } else if (response.statusCode == 401) {
      // do something
    } else {
      // message: server error;
    }
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'ID',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                // Perform login logic here
                String id = _idController.text;
                String password = _passwordController.text;

                // Add your login logic here
                await doLogin(id: id, password: password);
                if (isLogged == true) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListUserM13Screen()));
                }
              },
              child: Text('Login'),
            ),
            Text('Token: $_token'),
            Text('Token Asli: $_data')
          ],
        ),
      ),
    );
  }
}
