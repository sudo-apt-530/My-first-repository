void main() {
  const person1 = Human(name: "Ivan", age: 9, height: 134);
  final person2 = person1.copyWith(name: "Sasha");

  print(person1.nameAndAge);
  print(person2.nameAndAge);
}

class Human {
  const Human({required this.name, required this.age, required this.height});

  String get nameAndAge => "$name:$age";

  final String name;
  final int age;
  final double height;

  Human copyWith({String? name, int? age, double? height}) {
    return Human(
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
    );
  }
}
