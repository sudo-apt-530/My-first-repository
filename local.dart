class itemName {
  itemName(this.en, this.ru);

  final String en;
  final String ru;

  static String lan = "en";

  String get localization => (lan == "en") ? this.en : this.ru;
}

void main() {
  final loop = itemName("loop", "цикл");

  print(loop.localization);
  itemName.lan = "ru";
  print(loop.localization);
}
