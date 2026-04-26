void main() {
  // Variables can be imagined as a box which stores some item.
  // Variables can be declared without specifying any type with the var keyworkd
  var name =
      'Gagan'; // Here name variable automatically refers to a String Object
  print(name);
  // name = 10; === this won't work as now the name is referenced to the String object

  // We can also specify a specific type similar to other languages.
  String newName = 'GaganChandra';
  print(newName);

  //If the type of the object changes then we can use Object or dynamic
  Object firstName = 'Gagan'; // Here firstName is not fixed to String
  print(firstName);

  firstName = 10; // Here we have changed the firstName value from String to int to test
  print(firstName);
}
