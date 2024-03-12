class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void displayAllBooks() {
    for (var book in books) {
      print('Title: ${book.title}');
      print('Author: ${book.author}');
      print('Pages: ${book.pages}');
      print('------------------------');
    }
  }

  List<Book> searchByTitle(String title) {
    List<Book> hasilPencarian = books
        .where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
    return hasilPencarian;
  }
}

void main() {
  Library myLibrary = Library();

  Book book1 = Book('Dart Dasar', 'SJP', 180);
  Book book2 = Book('Flutter Dasar', 'Ricky', 281);

  myLibrary.addBook(book1);
  myLibrary.addBook(book2);

  print('All Books in Library:');
  myLibrary.displayAllBooks();

  print('\nSearch Results for "Dart Dasar":');
  List<Book> searchResults = myLibrary.searchByTitle('Dart Dasar');
  for (var result in searchResults) {
    print('Title: ${result.title}, Author: ${result.author}');
  }
}
