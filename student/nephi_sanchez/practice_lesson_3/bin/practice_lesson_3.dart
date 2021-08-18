late int myInt; // Here late is required
void main() {
  myInt = 5;
  print(myInt);
  {
    late int myInt; // Here late is redundant
    myInt = 6;
    print(myInt);
  }
  final hasColor = true;
  final isColor = false;
  String? color;
  color ??= '"YELLOW"';
  color = color == null ? "YELLOW" : null;
  print(color);
  color ??= "MAGENTA";
  print(color);
  if (isColor) {
    color = "'BLUE'";
  } else {
    color = null;
  }
  color = isColor ? "YELLOW" : null;
  var newColor = isColor ? "YELLOW" : null;
  newColor = null;
  //var favColor = "My favorite color is: " + isColor ? "RED" : "NULL"; Comiliation error
  {
    var favColor = "My favorite color is: " + (isColor ? "RED" : "NULL");
  }

  //favColor = null; // Compilation error
}
