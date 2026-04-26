void main() {
  // Sound Null Safety Ensures that potential run-time erros can be changed into the edit-time analysis errors
  int i; // Here i is a non-nullable variable
  print(
    i.abs(),
  ); // Here it is flagging an error, as non-nullable variable can't be used before initialization
  //Here sound null safetly enforces us to initialize the non-nullable variables before use.

  int? j; // Here j is a nullable variable, so its default value would be null
  print(
    j.abs(),
  ); // Here instead of variable error, it is showing abs error, as we can't perform abs on null value
}
