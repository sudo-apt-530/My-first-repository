void main() {
  final sum = (num x, num y) => x + y;
  final diff = (num x, num y) => x - y;
  final mult = (num x, num y) => x * y;
  final div = (num x, num y) => x / y;

  print(calc(5, 5, sum));
  print(calc(5, 5, diff));
  print(calc(5, 5, mult));
  print(calc(5, 5, div));
}

num calc(num x, num y, num Function(num x, num y) action) => action(x, y);
