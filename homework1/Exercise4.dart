class person {
  String name;
  int age;
  double height;

  person({required this.name, required this.age, required this.height});

  String printDescription() {
    return ("My name is ${this.name}. I'm ${this.age} years old, I'm${this.height}meters tall.");
  }
}

void main() {
  person a = person(name: "Non", age: 20, height: 182);
  person b = person(name: "Ter", age: 19, height: 175);
  print(a.printDescription());
  print(b.printDescription());
}
