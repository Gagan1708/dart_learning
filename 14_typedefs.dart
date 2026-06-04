/// In dart typedefs are declared using the keyword typedef
/// typedefs are useful to refer a type in a consice and clear way
/// typedefs should be declared outside the main() function

// Syntax:
typedef Inlist = List<int>;
typedef ListMapper<X> =
    Map<
      X,
      List<X>
    >; // This is a longer and confusing type so we can shorten and make it clear like this
// In the above declaration X is a placeholder generic, which we can replace with formal types later while using this typedef

void main() {
  // As we have declared a typedef for List<int>, we can use whenever we want to use List<int> type
  // for example
  Inlist list = [1, 2, 3]; // Now this became shorter and clearer
  print(list);

  // If we want to use that shortened listmapper function, use it as below:
  ListMapper<String> newList = {}; // As we have specified some placeholder generic in the declaration of type ListMapper, we can have whatever we want now while using
  print(newList);
}
