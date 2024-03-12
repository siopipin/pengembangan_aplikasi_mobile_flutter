class Person {
  String? _name;

  String get name {
    return _name!;
  }

  set name(String name) {
    _name = name;
  }
}

void main() {
  Person person = Person();
  person.name = "Mikroskil";
  print(person.name);
}
