/// Dart uses a combination of static type checking and runtime checks.
/// Ensures that a variable's value always matches the variable's static type.

void printInts(List<int> a) => print(a);
void main() {
  final list = [];
  list.add(1);
  list.add('2'); // This addition makes the list a List<dynamic> type
  printInts(list); // Now this line would give an error as List<dynamic> is not equal to List<int>
}
