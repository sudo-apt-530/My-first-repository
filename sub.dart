void main() {
  String? a = _getUserName();
  print(a?.substring(0, 6));
}

String? _getUserName() {
  return "Hello, World!";
}
