class itemName {
  itemName(this.en, this.ru, this.es);

  final String en;
  final String ru;
  final String es;

  static String lan = "en";

  String get localization {
    switch (lan) {
      case "ru":
        return this.ru;
      case "es":
        return this.es;
      default:
        return this.en;
    }
  }
}

void main() {
  final loop = itemName("loop", "цикл", "bucle");

  print(loop.localization);
  itemName.lan = "ru";
  print(loop.localization);
  itemName.lan = "es";
  print(loop.localization);
}
