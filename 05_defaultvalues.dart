void main() {
  // Default value of a nullable type variable is always null
  String? name;
  print(name);

  // Non-Nullable variable should be initialized or assigned later in the code before usage (due to null safety)
  String newName;
  // print(newName); === This will give an error as it is not yet have any value in it
  newName = 'Gagan';
  print(newName);
}
