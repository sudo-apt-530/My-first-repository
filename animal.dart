abstract class Animal {
  Animal({required this.name, required this.age, required this.good});
  final String name;
  int age;
  bool good;

  void grewUp(int a) {
    this.age += a;
  }

  void grewTo(int toAge) {
    if (toAge > age) {
      age = toAge;
    }
    return;
  }
}

class Bird extends Animal {
  Bird({
    required super.name,
    required super.age,
    required super.good,
    required this.isFlying,
  });

  bool isFlying;
}

void main() {
  var Owl = Bird(name: "I", age: 5, good: false, isFlying: false);

  Owl.grewTo(8);
  print(Owl.age);
}
