/// Three type of loops supported in dart are: for loops, while loops and do-while loops.
/// break and continue will be supported in loops

void main() {
  // usage of for loop
  var list = [1, 2, 3];
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  // for in syntax
  for (var value in list) {
    print(value);
  }

  // for each syntax
  list.forEach(print);

  // while loop syntax
  var i = 0;
  while (i < list.length) {
    print(list[i]);
    i++;
  }

  // do-while loop syntax
  i = 0;
  do {
    print(list[i]);
    i++;
  } while (i < list.length);

  // Using break in loops to stop the loop at certain point
  for (var j = 0; j < 10; j++) {
    print(j);
    if (j == 5) {
      break;
    }
  } // Now this loop will print 0 ... 5 and stops its execution, because of break

  // Using continue to skip a part of execution in loop and move to the next part of the execution
  for (var j = 0; j < 10; j++) {
    print(j);
    if (j == 5) {
      continue;
    }
  } // Now this loop will print 0 ... 4 6 ... 9, since with the continue statement we are skipping 5

  // Dart has a special identifiers called labels, which are declared as below
  outerLoop:
  for (var j = 0; j < 10; j++) {
    for (var k = 0; k < 3; k++) {
      print((j, k));
      if (j == 5) {
        break outerLoop; // Now this will stops executing the outer loop when the value of j is 5
      }
    }
  } // Similarly we can use the continue statement with labels


  // Labels are mostly used in nested loops to control the looping executions precisely
}
