/// Error handling can be done in dart similar to how the other languages does
/// You can throw and catch different Exceptions

void main() {
  // example to throw an exception
  // commenting the below line so that it won't effect the execution, we can un-comment to explore it
  // throw FormatException("This is an example throw"); // Now when you execute this file, it will throw and exception

  // catching an exception through try block
  try {
    dynamic isTrue = false;
    print(isTrue++);
  } catch (e) {
    print(e);
  }

  // we can also catch the stacktrace
  try {
    dynamic isTrue = false;
    print(isTrue++);
  } catch (e, s) {
    print(e);
    print(
      s,
    ); // this is stacktrace to understand which part of the code is giving error and its trace
  }

  // finally, can be used as clean up at the last of try-catch block
  try {
    dynamic isTrue = false;
    print(isTrue++);
  } catch (e) {
    print(e);
  } finally {
    print("Done executing try-catch");
  }
}
