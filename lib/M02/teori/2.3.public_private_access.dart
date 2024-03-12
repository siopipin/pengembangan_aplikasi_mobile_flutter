class Person {
  String? name; // Public
  int? _age; // Private

  void _privateMethod() {
    print('This is a private method');
  }

  void publicMethod() {
    _privateMethod(); // Memanggil private method dari dalam kelas
  }
}

void main(List<String> args) {
  Person person = Person();
  person.name = "Mikroskil";
  person.publicMethod();
  print(person.name);
}
