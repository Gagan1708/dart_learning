/// Major branching statements in dart are: if, if-case, and switch

void main() {
  int age = 23;

  // Using the if statement, for if statement there will be extended optional clauses else and else-if which are executed when the if condition becomes false
  if (age < 18) {
    print("Young");
  } else if (age >= 18 && age <= 60) {
    print("Middle Age");
  } else {
    print("Old");
  }

  var list = [(1, 2)];

  // Using the if-case statement, in which the case statement is followed by a pattern matching concept
  if (list case [(int x, int y)]) print(x+y);

  var op = '+';

  // Using the switch statment, by which we can take a variable and based on its value we can make the program to do something
  switch (op) {
    case '+':
      print(2 + 3);
    case '*':
      print(2 * 3);
    case '/':
      print(2 / 3);
    case '%':
      print(2 % 3);
    default: // This is a default statement, this can also be declared using wildcards like case _: this is same as default
      print(2 - 3);
  }

  // switch statement only executes one case (whose condition is true)
  // So to execute multiple cases one after other we can use the labels concept as below

  switch (op) {
    case '+':
      print(2 + 3);
      // Now I also want to print the division value, we can use continue followed by label name to do that
      continue divisionCase;
    case '*':
      print(2 * 3);

    // Now we need to use the label as the next case is division
    divisionCase:
    case '/':
      print(2 / 3);
    case '%':
      print(2 % 3);
    case _: // this is same as default
      print(2 - 3);
  }

  // dart has even simpler way of switch, the concept is known as switch expressions
  // but this switch expression always wants to return something, so we can use it to assign to a variable, not directly as switch
  // we can use this inside print, if we want to directly use it without assigning to anything
  // usage is as below, first way assignment
  var result = switch (op) {
    '+' => 2 + 3,
    '*' => 2 * 3,
    '/' => 2 / 3,
    '%' => 2 % 3,
    _ =>
      2 - 3, // this would be the default case (this is mandatory for switch expressions if used with strings)
  };

  print(result);

  // usage is as below, second way direct print
  print(switch (op) {
    '+' => 2 + 3,
    '*' => 2 * 3,
    '/' => 2 / 3,
    '%' => 2 % 3,
    _ => 2 - 3,
  });

  // Exhaustiveness
  // This feature helps report a compile-time error when there is a possible value and its case is not there in switch
  // Example:
  bool?
  something; // Now this bool is nullable that means its values can be true, false and also null

  // Now if write a switch case below
  switch (something) {
    case true:
      print(true);
    case false:
      print(false);
    // If we dont write the below case, then the switch would be non-exhaustive, and gives a compile-time error

    case null: // or case _: Now this case is mandatory as bool? can have null value 
      print(null); 
  }
}
