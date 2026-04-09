class itemName {
  itemName(this.en, this.ru, this.es, this.ge, this.fr);

  final String en;
  final String ru;
  final String es;
  final String ge;
  final String fr;

  static String lan = "en";

  String get localization {
    switch (lan) {
      case "ru":
        return this.ru;
      case "es":
        return this.es;
      case "ge":
        return this.ge;
      case "fr":
        return this.fr;
      default:
        return this.en;
    }
  }
}

void main() {
  final loop = itemName("loop", "цикл", "bucle", "ციკლი", "boucle");

  print(loop.localization);
  itemName.lan = "ru";
  print(loop.localization);
  itemName.lan = "es";
  print(loop.localization);
  itemName.lan = "ge";
  print(loop.localization);
  itemName.lan = "fr";
  print(loop.localization);
}
