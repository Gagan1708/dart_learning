void main() {
  //final variable is a variable that can be set only once and it is initialized at runtime
  final String name = 'Gagan';
  print(name);

  // const variable is a compile-time constant variable that is initialized at compile time and cannot be changed at runtime
  const pi = 3.14;
  print(pi);

  // NOTE: Instance variables can be final but not const as they are initialized at runtime and not compile time.

  const number = [1];
  var num = const [];

  // Here we can change the referece of num but not number as it is const
  num = [1, 2, 3];
  print(num);

  number = [
    1,
    2,
    3,
  ]; // This will give an error as we can't change the reference of a const variable

  // NOTE: Although a final object cannot be modified, its fields can be changed. In comparison, a const object and its fields cannot be changed: they're immutable.
}
