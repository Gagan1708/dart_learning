String
name; // This will give an error as dart can't analyse the top-level variables' initialization status
late String
firstName; //This will not give an error, as we give guarantee to dart that we will for sure initialize the variable later before usage

void main() {
  name = 'Gagan';
  firstName = 'GaganChandra';
  print(name);
  print(firstName);
}

// NOTE: If you fail to initialize the late variable, run-time errors will occur