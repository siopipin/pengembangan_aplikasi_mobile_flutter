import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/ujian_screen.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/widgets/button_custom.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/praktek/widgets/textfield_custom.dart';

class LoginExamPage extends StatefulWidget {
  const LoginExamPage({super.key});

  @override
  State<LoginExamPage> createState() => _LoginExamPageState();
}

class _LoginExamPageState extends State<LoginExamPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController(text: "admin");
    _passwordController = TextEditingController(text: "password");
  }

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "admin" && password == "password") {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => UjianScreen()), (route) => false);
    } else {
      print("Login Gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldCustom(ctrl: _usernameController, label: 'Username'),
            TextFieldCustom(
                isObscureText: true,
                ctrl: _passwordController,
                label: 'Password'),
            ButtonCustom(onPressed: _handleLogin, label: "Login")
          ],
        ),
      ),
    );
  }
}
