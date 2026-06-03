/// Generics are used to indicate the formal Type of a given object in dart
/// For example in dart we use List<T> here T is the type placeholder which will be replaced by any other formal Type like List<int> or List<String>
/// Generics are often indicated by the single-letter names, such as E, T, S, K, and V
/// Generics are required for type safety, but they also have more benefits such as:
/// 1. Better generated code
/// 2. Reduce code duplication

void main() {
  // Generics <T>
  List<String> names = [
    'Gagan',
    'Chandra',
  ]; // String is a formal type given as generic to the list literal
  print(names);

  // Using generics we can create a type-safe literal, for example
  // The above names list cannot take the integer values
  // names.add(20); // This line will produce an error

  // By generics the developer, the code viewer, everyone will understand what can be done to a literal

  // Another reason is to reduce code duplication
  // For example:
  /*
    Let's say you want to create an abstract class for caching an object
    abstract class ObjectCache{
      Object getByKey(String key);
      void setByKey(String key, Object value);
    }

    Now let's say later you realized that you want to cache a String object, the you create
    abstrace class StringCache{
      String getByKey(String key);
      void setByKey(String key, String value);
    } 

    Later you thought of caching the integer object, and you create one more class

    So to reduce this redundancy we can use generics as below
    abstract class Cache<T>{
      T getByKey(String key);
      void setByKey(String key, T value);
    }

    Here T becomes the stand-in type or a placeholder which will later be defined
  */

  // Generics can be allowed by methods and functions also
}
