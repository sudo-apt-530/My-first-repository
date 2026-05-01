void main() {
  final items = <String>["Rucksack", "Poison", "Cap"];

  print(items);
  
  // 1
  for (final item in items) {
    print(item);
  }
  // middle
  print("--------");
  // 2
  for (var i = 0; i < items.length; i++) {
    print(items[i]);
  } 
}