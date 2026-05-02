/// There are different types of operators in Dare, here are some of them with their precedence:
/// - unary postfix: ++, --, !
/// - unary prefix: -, !, ~, ++, --
/// - multiplicative: *, /, %, ~/ ==> Associativity: Left-to-Right
/// - additive: +, - ==> Associativity: Left-to-Right
/// - shift: <<, >>, >>> ==> Associativity: Left-to-Right
/// - bitwise AND: & ==> Associativity: Left-to-Right
/// - bitwise XOR: ^ ==> Associativity: Left-to-Right
/// - bitwise OR: | ==> Associativity: Left-to-Right
/// - relational and type test: >=, >, <=, <, as, is, is!
/// - equality: ==, !=
/// - logical AND: && ==> Associativity: Left-to-Right
/// - logical OR: || ==> Associativity: Left-to-Right
/// - if-null: ?? ==> Associativity: Left-to-Right
/// - conditional: expr1 ? expr2 : expr3 ==> Associativity: Right-to-Left
/// - cascade: .., ?.. ==> Associativity: Left-to-Right
/// - assignment: =, +=, -=, *=, etc, ??= ==> Associativity: Right-to-Left

void main() {
  //Examples

  int a = 10;
  String? name = 'Gagan';
  // post increment or decrement
  print(
    a++,
  ); // Here a value will be incremented by 1, but when the control is at this point, the value of a will still print as 10, since the operation is post increment
  print(
    a--,
  ); // Here after the operations print above the a value is increased to 11, and now it will be changed to 10 again, but since its a post decrement the value printed will be 11

  // post null check
  // Tells compiler that "The value is not null"
  print(
    name!.length,
  ); // String? can be nullable, but while using the variable if we !, this tell dart its definitely not null, so you can safely access .length

  // - operator, indicates negative value
  print(-a);

  // ! operator, alters the value to its opposite
  print(!true); // prints false

  // ~ operator, gives the compliment of the value, that means it flips the bits
  print(
    ~a,
  ); // This will print -11 as 10 = 0000 1010, if complement ==> 1111 0101 ==> take 2s compliment ==> 0000 1010 + 1 ==> 00001011 ==> -11
  // Shortcut formula here would be: ~a = -(a+1)

  // pre increment and decrement
  print(
    ++a,
  ); // Here before executing the print operation the value of a is updated by incrementing with 1

  print(
    --a,
  ); // Here before executing the print operation the value of a is updated by decrementing with 1

  // Multiplicative
  // * ==> indicates multiplcation
  print(a * 10); // Multiplies a with 10

  // / ==> indicates normal division
  print(a / 10); // gives the division result ex: 10/3 == 3.3333

  // % ==> indicates modulus
  print(a % 10); // gives the reminder as the output

  // ~/ ==> indicates floor division
  print(a ~/ 10); // gives the floored output ex: 10~/3 == 3

  // Additive
  // + ==> indicates addition
  print(a + 10); // adds 10 to a

  // - ==> indicates subtraction
  print(a - 10); // subtracts 10 from a

  // Shift
  // << ==> indicates left shift
  print(a << 1); // shifts the bits in a to left by 1 bit

  // >> ==> indicates right shift
  print(a >> 1); // shifts the bits in a to right by 1 bit

  // >>> ==> always gives a positive(unsigned) value
  print(
    -a >>> 1,
  ); // shifts the bits in -a to right by 1 bit and gives the output in a positive integer

  // bitwise AND: used to perform and operations between the bits of two numbers
  print(a & 3);

  // bitwise XOR: used to perform xor operations between the bits of two numbers
  print(a ^ 3);

  // bitwise OR: used to perform or operations between the bits of two numbers
  print(a | 3);

  //relational
  // >= ==> checks whether the left side number is greated than or equal to right
  print(a >= 10);

  // > ==> checks whether the left side number is strictly greater than the right
  print(a > 5);

  // <= ==> checks whether the left side number is less than or equal to right
  print(a <= 10);

  // < ==> checks whether the left side number is strictly less than the right
  print(a < 3);

  // Type Test operators
  // as ==> used to tell Dart "Treat this value as a specific type"
  dynamic x = 10; // inferred as int
  int y = x as int; // cast to int and assign
  print(y);

  // is ==> Used to check whether the type of a variable is of specific type
  print(a is String); // outputs false, as a is integer

  // is! ==> opposite of is
  print(a is! String); // outputs true, as a is not a String

  //equality
  // == ==> checks whether the RHS is equal to LHS
  print(
    a == 10,
  ); // if a is 10 then RHS is equal to LHS then outputs true else false

  // != ==> checks wheterh the RHS is not equal to LHS
  print(
    a != 10,
  ); // if a is not 10 then RHS is not equal to LHS then outputs true, else false

  // logical AND: returns true if both the expressions are true
  print(true && false); // outputs false, as one expression is false

  // logic OR: returns true if any one of the expressions is true
  print(true || false); // outputs true, as one of the expression is true

  // if-null: performed between two expressions, if left expression is null returns right expression, else left
  print(null ?? 'Gagan'); // outputs Gagan as the first (left) is null

  // conditional: returns first expression if the the LHS is true else second expression
  print((a == 10) ? a : 20); // outputs a if a is equal to 10 else 20

  // Assignment
  // = ==> assigns a value to a variable
  a = 20;
  print(a);

  // ??= ==> assigns value to a only if a is null
  // ignore: dead_code
  a ??= 30;
  print(a); // still the value of a is unchanged because a is not null before

  // *=, -=, etc evaluates to var * 10 or var - 10 etc
  a += 20; // evaluates to a = a + 20
  print(a);
}
