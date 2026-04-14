class itemName {
  // параметры
  itemName(this.en, this.ru, this.es, this.ge, this.fr, this.gr);

  // переменные для парметров
  final String en;
  final String ru;
  final String es;
  final String ge;
  final String fr;
  final String gr;

  // переменная что-бы сразу менять язык во всём приложении
  static String lan = "en";

  // getter для возврощения слова на языке который можно менять с помощью lan переменной
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

  // получаем слово на языке
  print(loop.localization);
  // меняем язык так
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
