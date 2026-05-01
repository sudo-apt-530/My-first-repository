void main() {
  var person1 = Human(name: "Ivan", age: 9, height: 134);
  var person2 = Human(name: "Sergey", age: 43, height: 180);

  print(person1);
  print(person1.name);
  print(person1.age);

  person1.grewUp(2);

  print(person1.age);

  person1.grewTo(12);

  print(person1.age);
  print(person2.isHigher(person1));
  print(Human.count);
  print(person2.nameAndAge);
}

class Human {
  Human({required this.name, required this.age, required this.height}) {
    count += 1;
  }

  static int count = 0;

  final String name;
  int age;
  double height;

  String get nameAndAge => "$name:$age";

  void grewUp(int years) {
    age += years;
  }

  void grewTo(int toYear) {
    if (age < toYear) age = toYear;
  }

  bool isHigher(Human otherHuman) {
    return this.height > otherHuman.height;
  }

  @override
  String toString() {
    return "Человек имя: $name, возраст: $age, длина: $height.";
  }

  Human copyWith({String? name, int? age, double? height}) {
    return Human(
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
    );
  }
}

class Artist extends Human {
  Artist({
    required super.name,
    required super.age,
    required super.height,
    required this.graphic,
  });

  String graphic;
}
