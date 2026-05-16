/// There are multiple built-in types in dart
/// Numbers: int, double
/// Strings: String
/// Booleans: bool
/// Records: (value1, value2)
/// Functions: Function
/// Lists: List (Same as arrays concept)
/// Sets: Set
/// Maps: Map
/// Runes: Runes (often replaced by the characters API)
/// Symbols: Symbol
/// The value null: Null

/// There are also some specific types in dart for specific roles
/// Object: The superclass of all dart classes except Null
/// Enum: The superclass of all enums
/// Future & Stream: Used in asynchronous programming
/// Iterable: Used in for-in loops, and in synchronous generator functions
/// Never: Indicates that an expression can never finish its evaluation. Used for functions which always throw and exception
/// dynamic: Indicates that you want to disable the static checking. Usually you should use Object or Object? instead
/// void: Indicates that a value is never used. Often used as function return type

// Importing characters package to supports Runes
import 'package:characters/characters.dart'; // This won't work as of now, since this folder is not a proper dart or flutter project to handle outside packages
// While executing please comment out the above import to get rid of errors.

void main() {
  // Numbers
  int x = 1;
  int hex = 0xDEADBEEF;
  double y = 1.1;
  double exponent = 1.4e5;
  print(x);
  print(hex);
  print(y);
  print(exponent);

  // we can also use as below
  num newNum = 1; // Here newNum can have both int and double values
  print(newNum);
  newNum += 1.23;
  print(newNum);

  // String -> int
  var one = int.parse('1');
  print(one);

  // String -> double
  var onePointOne = double.parse('1.1');
  print(onePointOne);

  // int -> String
  var oneAsString = 1.toString();
  print(oneAsString);

  // double -> String
  var piAsString = 1.3415.toStringAsFixed(2);
  print(piAsString);

  // We can also provide '_' in between numbers for readability of numbers
  var tenThousand = 10_000; // This is equal to normal 10000
  print(tenThousand);

  // Strings
  String name = 'Gagan';
  print(name);
  String nameWithDoubleQuote = "Gagan"; // Double Quote also works for strings
  print(nameWithDoubleQuote);
  String sentence = 'It\'s good to have you'; // Escaping delimiter
  print(sentence);
  String sentenceNoEscape =
      "It's good to have you"; // No Escaping needed it used other delimiter
  print(sentenceNoEscape);

  // We can use ${} to insert a string into other string
  String fullName = '${name} Chandra';
  print(fullName);

  // We can concatenate to strings with + operator
  String concatenate = 'first string ' + 'second string';
  print(concatenate);

  // We can write multi-line string using ''' or """
  String mLineString = '''
                        This is a multi line string
                        first line
                        second line
                        end
                      ''';
  print(mLineString);

  // Runes is used to get the Unicode points of a String
  // We can use characters package to extract the Unicode sequences
  String runesExample = 'Hi 🇩🇰';
  print(
    runesExample.runes,
  ); // This is also helpful as we are currently now working in a dart or flutter project
  // If we work under a dart or flutter project we can use as below
  // print(runesExample.characters.last);
}
