// Dengan Pewarisan
class Binatang {
  String name;
  int age;

  Binatang(this.name, this.age);

  void suaraBinatang() {}
}

class Kucing extends Binatang {
  Kucing(String name, int age) : super(name, age);

  @override
  void suaraBinatang() {
    print('$name bermeong-meong.');
  }
}

class Anjing extends Binatang {
  Anjing(String name, int age) : super(name, age);

  @override
  void suaraBinatang() {
    print('$name menggongong.');
  }
}

void main() {
  Kucing kucing = Kucing('Juju', 3);
  Anjing anjing = Anjing('Leki', 5);

  kucing.suaraBinatang();
  anjing.suaraBinatang();
}
