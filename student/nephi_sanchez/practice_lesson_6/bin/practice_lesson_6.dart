// ignore_for_file: prefer_single_quotes

num factorial(num value) =>
    value <= 1.0 ? value : value * factorial(value - 1.0);

String earthquakeMessage(num scale) {
  if (scale < 2.0) {
    return "";
  }
  if (scale < 4.0) {
    return "";
  }
  if (scale < 6.0) {
    return "";
  }
  return "";
}

/// Prints the factorials from 0 to [length] exclusive. Note that [length]
/// must be positive.
void printFactorials(int length) {
  assert(length >= 0.0, "[length] must be positive");
  //for (int i = 0; i < length; i++)
  // for (INITIAL; CONDITION; TO EXECUTE AT END OF SCOPE)
  for (int i = 0; i++ < length;) {
    print("The factorial of $i is ${factorial(i)}");
    //i++;
  }
}

Future<void> createUser({
  required String uname,
  required String password,
}) async {
  // TODO: Implement user notifification...
  assert(password.length >= 8, "Password too short");
  // TODO: Add code here. // Todo Tree
}

// Container(
//   //color: Colors.red,
//   decoration: BoxDecoration(
//     color: Colors.blue,
//   ),
// )

void main() {
  if (1 == 1) {
    // TRUE
  } else {
    // FALSE
  }

  num scale = 3.3;
  if (scale < 2.0) {
    // Block 1
  } else if (scale < 4.0) {
    // Block 2
  } else if (scale < 6.0) {
    // Block 3
  } else {
    // Block 4

  }

  // x is 0 to 10 inclusive/exclusive
  // x: (0, 10]
  printFactorials(-10);
  createUser(uname: "nephi.sanchez", password: "");
}
