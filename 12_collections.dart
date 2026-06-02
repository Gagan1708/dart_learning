// Dart has built-in list, map, and set collections

void main() {
  // List
  // Syntax
  var list = [
    1,
    2,
    3,
  ]; // Here it infers to List<int>, we can't store other types
  print(list);

  // Other way of declaration
  List<String> names = ['Gagan', 'Chandra'];
  print(names);

  // To get size of a list we can use .length property of the lists
  print(list.length); // prints 3
  print(names.length); // prints 2

  // To access elements in a list using the index
  print(names[0]); // Prints Gagan, since the element at 0th index is Gagan
  print(names[1]); // Prints Chandra, since the element at 1st index is Chandra

  // To create a compile-time constant list, we can follow below method
  var constList = const [1, 2, 3];
  print(constList);

  // We cannot modify the compile-time constant lists
  constList[1] =
      20; // This is not possible, this would provide a runtime exception

  // Sets: Sets in dart are structures which is a collection of unique elements
  // Syntax
  var planets = {
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Neptune',
    'Uranus',
  };
  print(planets);

  // To create an empty list, we can follow the below way
  var elements = <String>{};
  // If we do directly var elements = {}; dart will consider elements to be a map, <Type> should be given to tell dart it is a set of that Type

  // To add items to a list we can use add and addAll methods.
  elements.add('Helium');
  print(elements);
  elements.addAll(
    planets,
  ); // This addAll() will be used to add a seperate set to a set.
  print(elements);

  // To get size of a set we can use .length property of sets
  print(elements.length);
  print(planets.length);

  // To create compile-time constant sets we can follow below way
  var constSet = const {1, 2, 3};
  print(constSet);
  constSet.add(5); // This will provide a runtime exception

  // Maps: Maps in dart are key:value pair collection.
  // Key and value can be of any type
  // Each key should occur only once in a map
  // Syntax
  var grades = {
    'A': 'Distinction',
    'B': 'Average',
    'C': 'Pass',
    'D': 'Fail',
  }; // Here dart infers grades to Map<String, String>
  print(grades);

  // To create an empty map we can follow the below method
  var gifts = Map<String, String>(); // or var gifts = <String, String> {};
  // Adding elements to the map
  gifts['First'] = 'Plate';
  gifts['Second'] = 'Cup';
  gifts['Third'] = 'Pen';
  print(gifts);

  // To access a key value pair from a map we can follow below way
  print(gifts['First']); // Prints Plate
  print(gifts['Third']); // Prints Pen

  // If we try to access a non-key's value, it will return null
  print(gifts['Fifth']); // Prints null

  // To get size of a map, we can use .length property of maps
  print(gifts.length); // Prints 3
  print(grades.length); // Prints 4

  // To create a compile-time constant map, we can follow below method
  var constMap = const {'key': 'Value'};
  print(constMap);
  constMap['second'] = 'Value2'; // This will provide a runtime exception

  // We can add expression elements to the collections in dart, each expression element is evaluated and the result will added to the collection
  // Here I am taking examples of list from now, but this is applicable to Sets and Maps as well
  list.add(
    1 + 5,
  ); // This will evaluate the expression '1+5' and adds the result 6 to the list
  print(list);

  // We can also add null-aware expression elements or null-aware elements to the collections in dart
  // Here I am taking examples of list from now, but this is applicable to Sets and Maps as well
  int? newElement =
      null; // This is a nullable object, and the value of it is currently null
  var newList = [
    1,
    newElement,
    ?newElement,
    3,
  ]; // The result is [1, null, 3], ?newElement checks whether the element is null, if yes it won't add it to the list
  print(newList);

  // We can also use spread and null-aware spread in lists of dart
  var spreadExample = [0, ...newList, 4]; // result: [0, 1, null, 3, 4]
  print(spreadExample);

  List<int>? nullAware = null; // This is a nullable list, and its value is null
  var nullAwareSpread = [
    1,
    ...?nullAware,
    3,
    4,
  ]; // result : [1, 3, 4], since nullAware is a null list, it won't add to this list
  print(nullAwareSpread);

  // Similarly we can add conditional elements (elements based on conditions)
  var conditionalList = [1, if (true) 10, 3]; // Result: [1, 10, 3]
  print(conditionalList);

  // Similarly we can add looping elements (elements added based on loops)
  var loopsList = [
    1,
    for (int i = 2; i < 10; i++) i,
    10,
  ]; // result: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(loopsList);
}
