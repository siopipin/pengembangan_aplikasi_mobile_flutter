import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M06/teori/news_comment_screen.dart';

class NewsDetailScreen extends StatefulWidget {
  String title;
  String detail;
  NewsDetailScreen({super.key, required this.title, required this.detail});

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detail berita")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Text(widget.title),
            Text(widget.detail),
            TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsCommentScreen())),
                child: Text("Add Comment")),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Kembali kehalaman sebelumnya.."))
          ],
        ),
      ),
    );
  }
}
