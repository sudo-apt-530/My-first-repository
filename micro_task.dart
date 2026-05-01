void main() {
  Future(() => print("!1"));
  Future(() => print("!2"));
  Future.microtask(() => print("@3"));
}
