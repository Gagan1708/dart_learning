void main() {
  // wildcard variables are used as placeholders when the actual value is not important or when we want to ignore a value.
  // In Dart, we can use the underscore (_) as a wildcard variable.

  // We can use as many as wildcard variable in a program.
  int _ = 1;
  var _ = 3;

  // Wrong usage:
  print(
    _,
  ); // This will give an error as we can't use the wildcard variable for any purpose, it is just a placeholder.

  // Pattern matching with wildcard variables:
  var data = [537, 'Gagan'];
  var [_, name] =
      data; // Here we are using wildcard variable to ignore the first value of the list and only care about the second value which is name.
  print(name);
}
