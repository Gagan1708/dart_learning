/// Metadata in dart is used to provide the additional static information of the code
/// Metadata annotation starts with a @ and followed by either a reference to a compile-time constant or a call to a constant constructor

void main() {
  // Built-in annotations
  // @Deprecated : Tells user that a particular part of code is migrated away.
  // Types of @Deprecated annotation
  // @Deprecated.extend(): Extending this class is deprecated
  // @Deprecated.implement(): Implementing this class is deprecated
  // @Deprecated.subclass(): Subclassing(Extending or Implementing) this class is deprecated
  // @Deprecated.mixin(): Mixing in this class is deprecated
  // @Deprecated.instantiate(): Instatiating this class is deprecated
  // @Deprecated.optional(): Omitting an argument for the parameter is deprecated
  // The example is provided below with a class
  Television tv = Television();
  tv.activate(); // This will work, but if you hover on the function it will show it's deprecated, and at anytime it can vanish from the codebase
  tv.turnOn();

  // @override: Marks an instance member as an override or implementation of a member with the same name from a parent class or interface
  // @pragma: Provides specific instructions or hints about a declaration to Dart tools, such as the compiler or analyzer

  // Analyzer-supported annotations
  // These are annotations which are not built-in and needs package:meta to be imported
  // @visibleForTesting: Marks a member of a package as only public so that the member can be accessed from the package's tests. The analyzer hides the member from autocompletion suggestions and warns if it's used from another package.
  // @awaitNotRequired: Marks variables that have a Future type or functions that return a Future as not requiring the caller to await the Future. This stops the analyzer from warning callers that don't await the Future due to the discarded_futures or unawaited_futures lints.

  // Custom annotations
  // In dart we can create our own custom annotations using the class concept
  // The example is outside of main() function
}

class Television {
  @Deprecated("Use turnOn Function instead")
  void activate() {
    print("Activating TV...");
  }

  void turnOn() {
    print("Turning on...");
  }
}

// Custom annotation
class Todo {
  final String message;
  const Todo(this.message);
}

@Todo("Need to implement this function later")
void something() {
  print("Do something");
}
