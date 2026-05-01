import 'pow.dart';

void main() {
  final user = User(height: 180, weight: 56);
  print(user.bmi);
}

class User {
  User({required this.height, required this.weight}) {
    bmi = weight / pow(height.toInt(), 2);
  }

  final double height;
  final double weight;
  late final double bmi;
}
