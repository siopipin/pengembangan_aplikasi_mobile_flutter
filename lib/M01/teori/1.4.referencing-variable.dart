String greeting = 'Hello, Class!'; // Variabel global

void main() {
  print(greeting); // Merujuk variabel greeting
  printMessage();
  greet(
      greeting); // Memanggil fungsi greet dengan variabel userName sebagai parameter
}

void printMessage() {
  String message = 'This is a message'; // Variabel lokal dalam fungsi

  print(message); // Merujuk variabel message
}

void greet(String name) {
  print('Hello, $name!'); // Merujuk variabel name sebagai parameter fungsi
}

/// rules:
// Tipe Data: Dart adalah bahasa pemrograman yang statis-typed, yang berarti Anda perlu menyebutkan tipe data dari variabel saat mendeklarasikannya. Contoh:
int number = 10; // Deklarasi variabel number dengan tipe data int
String name = 'John'; // Deklarasi variabel name dengan tipe data String
double price = 19.99; // Deklarasi variabel price dengan tipe data double

//Kata Kunci var: Dart juga mendukung penggunaan kata kunci var yang memungkinkan Dart untuk secara otomatis menentukan tipe data variabel berdasarkan nilai yang diberikan. Contoh:
var numberVar =
    10; // Dart akan menentukan tipe data variabel number sebagai int
var nameVar =
    'John'; // Dart akan menentukan tipe data variabel name sebagai String
var priceVar =
    19.99; // Dart akan menentukan tipe data variabel price sebagai double

final int age = 30; // Variabel final
const double pi = 3.14; // Variabel const

