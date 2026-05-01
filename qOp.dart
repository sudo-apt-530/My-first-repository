void main() {
  print(greaterOrNot(3, 4));
}

String greaterOrNot(num a, num b) {
  if (a == b) return "Равно";
  return a > b ? "Больше" : "Меньше";
}