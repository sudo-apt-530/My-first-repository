import 'dart:math';

void main() async {
  /*makeCofee(107).then((sec) {
    makeCofee(67);
  });*/

  final cofeeSec = await makeCofee(24)
      .then(
        (sec) => sec,
        //onError: (err) => false);
      )
      .catchError((err) {
        print("ERROR");
        return false;
      })
      .whenComplete(() {
        print("Completed.");
      });

  print(cofeeSec);
}

Future<bool> makeCofee(int number) async {
  throw Exception;
  print("Делаем кофе №$number...");
  final random = Random();
  final seconds = random.nextInt(4);
  await Future.delayed(Duration(seconds: seconds));
  print("Сделали кофе №$number за $seconds сек.");

  return true;
}
