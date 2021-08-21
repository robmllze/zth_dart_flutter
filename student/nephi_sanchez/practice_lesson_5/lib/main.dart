Null doNothing() => null;

void printGreeting({
  required String name,
  String? countryOfOrigin,
}) {
  String message = "Welcome $name";
  if (countryOfOrigin != null) {
    message += " from $countryOfOrigin";
  }
  print(message);
}

void printGreeting2({
  required String name,
  String countryOfOrigin = "",
}) {
  String message = "Welcome $name";
  if (countryOfOrigin != "") {
    message += " from $countryOfOrigin";
  }
  print(message);
}

void printGreeting3(
  String name, {
  String? countryOfOrigin,
}) {
  String message = "Welcome $name";
  if (countryOfOrigin != null) {
    message += " from $countryOfOrigin";
  }
  print(message);
}

void printGreeting4(
  String name, [
  String countryOfOrigin = "Citizen of the World",
]) {
  String message = "Welcome $name";
  if (countryOfOrigin != null) {
    message += " from $countryOfOrigin";
  }
  print(message);
}

void main(List<String> args) {
  // printGreeting(name: "Anonymous");
  // printGreeting(name: "Nephi and Rob", countryOfOrigin: "USA and South Africa");
  // printGreeting3("Sam", countryOfOrigin: "Estonia");
  // printGreeting4("Jaques", "France");
  // printGreeting4("Jose");
  if (args.length < 2) {
    print("At least two numbers are needed");
    return;
  }
  num a, b, c;
  a = num.parse(args[0]);
  b = num.parse(args[1]);
  c = a + b;
  print("The sum of those two numbers = $c");

  final myFunction = () => null;

  showDialog(
    question: "Are you sure you want to quit?",
    onYes: () {
      // onYes stuff
    },
    onNo: () {
      // onNo stuff
    },
  );
}

void showDialog({
  required String question,
  required Function onYes,
  required Function onNo,
}) {}
