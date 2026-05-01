void main() {
  try {
    sum(1, 2);
  } on Exception catch (e) {
    print("ERROR: $e");
  } on Error catch (e) {
    print("I can't go to the market, because $e!");
  }
}

int sum(int a, int b) {
  throw UnimplementedError();
}