void main() {
  var storage = Storage<String>();
  print(storage.value);
  storage.update("String");
  print(storage.value);
  print(storage);
}

class Storage<T> {
  Storage({this.value});
  T? value;

  T? read() => value;

  void update(T? value) {
    this.value = value;
  }

  @override
  String toString() {
    return "This is Storage!";
  }
}
