import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/praktek/list_news_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png', // cari sendiri link gambar di google.
              height: 200,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),

            // TASK: Tambahkan 1 TextField untuk usename.

            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // TASK: tambahkan validasi untuk cek username juga.

                  if (emailController.text == 'ti-a@email.com' &&
                      passwordController.text == 'password') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListNewsScreen()),
                        (route) => false);
                  }

                  // TASK: tambahkan kondisi untuk cek jika email atau password kosong maka tampilkan showSnacBar() seperti contoh di bawah

                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Email atau password salah'),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
