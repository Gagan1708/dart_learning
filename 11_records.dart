/// Records are anonymous, immutable, and aggregate type in dart.
/// Used to bundle multiple objects into a single object
/// Records are fixed-sized, heterogeneous, and typed

void main() {
  // Syntax of records
  var firstRecord = ('first', a: 1, b: true, 'last');
  // Here a, b fields are named fields.
  print(firstRecord);

  // If we want to initialize later and declare first, we can declare as below
  (String, int) secondRecord;
  // Initialization
  secondRecord = ('Gagan', 23);
  print(secondRecord);

  // To declare named fields, we can declare as below
  ({String name, int age}) thirdRecord;
  // Initialization
  thirdRecord = (name: 'Gagan', age: 23);
  // type of secondRecord != type of third Record
  // Every named field records have different type
  print(thirdRecord);

  // Accessing the record data one after other can be done in two ways
  // 1. Named fields can be accessed directly using their name
  // 2. Normal fields can be accessed through $<position_num>
  // NOTE: Here we skip the named fields while counting for position_num
  print(
    firstRecord.$1,
  ); // position_num starts from 1 unlike index. This prints 'first' String
  print(firstRecord.a); // This prints the integer 1
  print(firstRecord.b); // This prints the boolean value true
  print(
    firstRecord.$2,
  ); // As we have named fields in between, we skip counting them, this prints the String 'last'

  // Record Equality
  // Normal Field records
  (int a, int b) point = (1, 2);
  (int r, int g) color = (1, 2);
  print(point == color); // This prints true

  // Named field records
  ({int a, int b}) point1 = (a: 1, b: 2);
  ({int r, int g}) color1 = (r: 1, g: 2);
  print(point1 == color1); // This print false, as named field records differ in type by each other. Every named field record will have its own type

}
