void main() {
  greet(); // Memanggil function greet
  int sum = add(
      5, 2); // Memanggil function add dan menyimpan hasilnya dalam variabel sum
  print('Hasil penjumlahan: $sum');

  greetUser("TI-A Sore");
  introduce(name: "Budi", age: 20);
}

void greet() {
  print('Hello, World!');
}

int add(int a, int b) {
  return a + b;
}

void greetUser(String name) {
  print('Hello, $name!');
}

void introduce({required String name, required int age}) {
  print('Nama: $name, Usia: $age');
}
