class Product {
  static int totalBelanja = 0; // Variabel kelas

  String name; // Variabel instance
  double price; // Variabel instance

  Product(this.name, this.price) {
    totalBelanja++;
  }

  void displayInfo() {
    print('Produk: $name, Harga: \$$price');
  }

  static void displayTotalProducts() {
    print('Total Products: $totalBelanja');
  }
}

void main() {
  Product product1 = Product('Smartphone', 4000);
  product1.displayInfo();

  Product product2 = Product('Laptop', 9000);
  product2.displayInfo();

  Product.displayTotalProducts();
}
