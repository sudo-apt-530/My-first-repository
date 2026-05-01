import 'dart:isolate';

Future<void> main() async {
  final receivePort = ReceivePort();
  final numberList = List.generate(20, (i) => i += 1);
  final isolatesCount = 4;
  final resList = <int>[];
  var completedIsolates = 0;

  for (var i = 0; i < isolatesCount; i++) {
    final stepSize = numberList.length ~/ isolatesCount;
    final subList = numberList.sublist(i * stepSize, (i + 1) * stepSize);
    //final resList = <int>[];

    Isolate.spawn(mathOperation, [subList, receivePort.sendPort, i]);
    // receivePort.close();
    /*receivePort.listen((data) {
      resList.addAll(data as List<int>);
    });*/
  }

  await for (final data in receivePort) {
    resList.addAll(data as List<int>);
    completedIsolates += 1;

    if (completedIsolates == 4) {
      resList.sort();
      print("Все пощитано $resList.");
      receivePort.close();
      break;
    }
  }
  //print("Все пощитано $resList.");
}

void mathOperation(List<Object> args) {
  final numbersList = args[0] as List<int>;
  final sendPort = args[1] as SendPort;
  final i = args[2] as int;

  final resList = <int>[];
  Future.delayed(Duration(seconds: 3));
  for (final number in numbersList) {
    final result = number * number;
    //sendPort.send(result);
    resList.add(result);
    print("[изолят №$i] $result");
  }
  sendPort.send(resList);
  print("[Изолят $i] Закончил работу.");
}
