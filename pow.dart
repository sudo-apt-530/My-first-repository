void main() {
  print(pow(4, 3));
}

int pow(int a, int n) {
  var result = a;

  for (var i = 1; i < n; i++) {
    result = result * a;
  }

  return result;
}
