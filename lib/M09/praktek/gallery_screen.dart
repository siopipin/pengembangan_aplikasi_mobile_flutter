import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M09/praktek/providers/book_provider.dart'; //sesuaikan
import 'package:provider/provider.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookProvider = context.read<BookProvider>();
    final bookWatchProvider = context.watch<BookProvider>();

    return Scaffold(
      appBar: AppBar(title: Text(bookProvider.titleScreen)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bookWatchProvider.memutar == true
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Text(
                    bookWatchProvider.bookName,
                    style: TextStyle(fontSize: 25),
                  ),
            TextField(
              controller: bookWatchProvider.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Book Name",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (bookWatchProvider.controller.text.isEmpty) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text("Warning"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Book Name cannot be empty"),
                            ),
                          ],
                        );
                      });
                } else {
                  bookProvider.ubahIdentitasBuku(
                      bookWatchProvider.controller.text, "Erlangga");
                }
              },
              child: Text("Change Book Name"),
            ),
          ],
        ),
      ),
    );
  }
}
