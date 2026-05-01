enum Pet {
  dog("Собака", "Dog"),
  cat("Кот", "Cat"),
  bird("Птица", "Bird");

  final String ru;
  final String en;
  const Pet(this.ru, this.en);

  // 1. Та самая переменная выбора языка ('ru' или 'en')
  static String selectedLanguage = 'ru';

  // 2. Геттер, который мгновенно реагирует на изменение selectedLanguage
  String get localization => (selectedLanguage == 'ru') ? ru : en;
}

void main() {
  final myDog = Pet.dog;
  final myCat = Pet.cat;

  // Сейчас выбрано 'ru' по умолчанию
  print("Язык: ${Pet.selectedLanguage}");
  print("${myDog.localization} и ${myCat.localization}"); // Собака и Кот

  print("--- МЕНЯЕМ НА 'en' ---");

  // 3. Просто меняем значение одной переменной
  Pet.selectedLanguage = 'en';

  // Теперь ВСЕ объекты Pet сразу "заговорили" по-английски
  print("Язык: ${Pet.selectedLanguage}");
  print("${myDog.localization} и ${myCat.localization}"); // Dog and Cat
}
