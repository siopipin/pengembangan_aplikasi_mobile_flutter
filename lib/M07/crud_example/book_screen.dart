import 'package:flutter/material.dart';
import 'package:pengembangan_aplikasi_mobile_flutter/M07/crud_example/book_class.dart';

class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final BookData bookData = BookData();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book CRUD Example'),
      ),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Book Title'),
          ),
          TextField(
            controller: authorController,
            decoration: InputDecoration(labelText: 'Author Name'),
          ),
          ElevatedButton(
            onPressed: () {
              bookData.addBook(titleController.text, authorController.text);
              setState(() {});
            },
            child: Text('Add Book'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bookData.books.length,
              itemBuilder: (context, index) {
                final book = bookData.books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          titleController.text = book.title;
                          authorController.text = book.author;
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit Book'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: titleController,
                                    decoration: InputDecoration(
                                        labelText: 'Book Title'),
                                  ),
                                  TextField(
                                    controller: authorController,
                                    decoration: InputDecoration(
                                        labelText: 'Author Name'),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    bookData.updateBook(
                                        index,
                                        titleController.text,
                                        authorController.text);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                  child: Text('Update'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          bookData.deleteBook(index);
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
