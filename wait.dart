import "dart:math";

void main() async {
  final future1 = makeCofee(45);
  final future2 = makeCofee(67);
  final future3 = makeCofee(34);
  final res = await Future.wait([future1, future2, future3]);
  print(res.fold<int>(0, (a, b) => a + b));
  // final sec = await future1;
}

Future<int> makeCofee(int number) async {
  print("Делаем кофе №$number...");
  final random = Random();
  final seconds = random.nextInt(4);
  await Future.delayed(Duration(seconds: seconds));
  print("Сделали кофе №$number за $seconds сек.");

  return seconds;
}
