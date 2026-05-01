import 'dart:math';

Stream<String> messageStream() async* {
  final id = Random().nextInt(1000);
  print("Канал №$id создан.");
  yield "Привет, как дела?";
  await Future.delayed(Duration(seconds: 2));
  yield "Привет, у меня хорошо! А как у тебя?";
  await Future.delayed(Duration(seconds: 2));
  yield "У меня тоже хорошо!";
}

void main() {
  final stream = messageStream().asBroadcastStream();

  final sub1 = stream.listen((value) => print(value));
  final sub2 = stream.listen((value) => print(value));

  stream.last.then((_) {
    sub1.cancel();
    sub2.cancel();
  });
}
