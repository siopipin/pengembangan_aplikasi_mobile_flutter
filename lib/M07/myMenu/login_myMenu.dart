import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/myMenu/myMenu_screen.dart';

class LoginMyMenu extends StatefulWidget {
  const LoginMyMenu({super.key});

  @override
  State<LoginMyMenu> createState() => _LoginMyMenuState();
}

class _LoginMyMenuState extends State<LoginMyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child:
                          Image.asset('assets/images/google.png', height: 200),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyMenu()));
                          },
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 15.0),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
