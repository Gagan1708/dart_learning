/// Dart is a true object oriented programming language
/// So everything including functions are also considered as objects in dart
/// functions will have a type Function
/// a function can be assigned to a variable and also can be passed an arguement to other functions

// example function syntax
bool isEligibleToVote(int age) {
  if (age < 18) return false;
  return true;
}

// Here the function return type is not mandatory (but is best practice to give), even without it will work same
isEligible(int age) {
  if (age < 18) return false;
  return true;
} // This function is same as the above isEligibleToVote function

// if there is only one expression in the function, we can use shorthand syntax as below
bool returnsTrue() =>
    true; // for this, there is no need to write return keyword, it will automatically return the final result after evaluating the expression

// the above is equvivalent to below
bool returnsFalse() {
  return false;
} // this becomes a bit verbose when, so recommended to use shorthand syntax

// Parameters
// There are three types of parameters in dart functions: Positional Parameters, Named Parameters and Optional Parameters
// Positional Parameters: These are simple parameters that we have used in our earlier examples
int add(int a, int b) => a + b; // Here a and b are positional parameters

// Named Parameters: These are used when we want to assign the arguments with a name while calling
// These parameters are declared inside a {} in the paramters list of a function as below
int subtract({int? a, int? b}) =>
    a! -
    b!; // Here the named parameters must be nullable, as if no value passed to them the will be default to null

// If you don't want your named parameters to be nullable, you have to provide a default value to them as below
int multiply({int a = 0, int b = 0}) =>
    a *
    b; // Now here, a and b will have default values to 0, so no nullable syntax is required

// Now in the above to functions, the named parameters are optional and have default values to them
// If you want a named parameter to be mandatory, then use the required keyword as below
int returnNegative({required int num}) =>
    -num; // Here when we call this function, we must have to pass a value of num

// Optional Parameters: These are almost similar to named parameters, but while calling we don't need any name.
// These are declared inside a [] in the parameters list of a function as below
int divide(int a, int b, [int? c]) =>
    a ~/
    b; // Here c is optional and must be nullable variable as it needs a default value

// The main() function
// This is the entry point function to the execution of any dart program
// This main() function has an optional List<String> parameter with a void return type
// void main(List<String> arguments) {
//   print(arguments); // This will print an empty list
// }
void main() {
  // From here what ever we want to execute we have to code

  // Calling all the example function one-by-one here
  print(isEligibleToVote(20));
  print(isEligible(17));
  print(returnsTrue());
  print(returnsFalse());
  print(add(1, 2));
  print(subtract(a: 1, b: 2));
  print(
    multiply(),
  ); // here this function has optional named parameters so no need to pass any arguments
  print(returnNegative(num: 9));
  print(
    divide(1, 2),
  ); // Here there is extra parameter c, but its optional, so no need to pass

  // we can pass a function as an argument to another function as below
  var list = [1, 2, 3];
  list.forEach(
    printElement,
  ); // Here forEach is an in-built function, and we are passing a printElement function as an argument to it
  // Although above we didn't pass any argument to printElement, it would pick up the element in list one after other and take it as an argument

  // Function Type
  // Use can assign a function to a variable and use it as below
  void Function(String, {String greet}) g = greet;
  g('Gagan', greet: "Hello");

  // Anonymous Function: These function can be written without any function name and can be used to do any work inside a different function
  // The usage is as below
  var fruits = ['apple', 'banana', 'mango'];
  fruits.forEach((item) => print(item.toUpperCase()));

  // or we can also use as below
  var upperCaseFruits = fruits.map((item) {
    return item.toUpperCase();
  }).toList();
  print(upperCaseFruits);
}

// function inside function example
void printElement(int ele) => print(ele);

// function types function
void greet(String name, {String greet = "Hello"}) => "$greet $name";
