class itemName {
  itemName(this.en, this.ru, this.es, this.ge, this.fr, this.gr);

  final String en;
  final String ru;
  final String es;
  final String ge;
  final String fr;
  final String gr;

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
      case "gr":
        return this.gr;
      default:
        return this.en;
    }
  }
}

void main() {
  final loop = itemName("loop", "цикл", "bucle", "ციკლი", "boucle", "Schleife");

  print(loop.localization);
  itemName.lan = "ru";
  print(loop.localization);
  itemName.lan = "es";
  print(loop.localization);
  itemName.lan = "ge";
  print(loop.localization);
  itemName.lan = "fr";
  print(loop.localization);
  itemName.lan = "gr";
  print(loop.localization);
}
