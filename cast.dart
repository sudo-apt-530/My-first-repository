void main() {
  int a = 1;
  bool b = true;

  double c = a.toDouble() + convertBooltoDouble(b);
  print(c);
  print(c.runtimeType);
}

double convertBooltoDouble(bool x) {
  if (x == true) {
    return 1;
  }
  return 0;
}
