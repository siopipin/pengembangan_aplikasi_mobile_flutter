// Tanpa Pewarisan (Redundansi)
class Kucing {
  String name;
  int age;

  Kucing(this.name, this.age);

  void meow() {
    print('$name bermeong-meong.');
  }
}

class Anjing {
  String name;
  int age;

  Anjing(this.name, this.age);

  void gonggong() {
    print('$name menggonggong.');
  }
}

void main() {
  Kucing kucing = Kucing('Juju', 3);
  Anjing anjing = Anjing('Leki', 5);

  kucing.meow();
  anjing.gonggong();
}
