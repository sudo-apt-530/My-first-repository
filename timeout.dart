import "dart:math";

void main() async {
  final future = makeCofee(45);
  future.timeout(Duration(seconds: 4));
  final sec = await future;
}

Future<bool> makeCofee(int number) async {
  print("Делаем кофе №$number...");
  final random = Random();
  final seconds = random.nextInt(10);
  await Future.delayed(Duration(seconds: seconds));
  print("Сделали кофе №$number за $seconds сек.");

  return true;
}
