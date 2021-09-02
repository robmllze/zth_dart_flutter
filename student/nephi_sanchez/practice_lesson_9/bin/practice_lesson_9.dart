import 'dart:math';

// ignore_for_file: dead_code

void main() {
  print("This is a 'double' \"quoted\" String");
  print('This is a "single" \'quoted\' String'); // Preferred
  print("String 1 " + "and" + " String 2");
  print("String ${55}");
  print("String ${'hello'}");
  print("XYZ\n" * 5);
  // \t, \n, \", ...
  print("Hello"[2]);
  print("\t\t\t  This is my String      \n\n\n\n\t\t\t          ".trim());
  print("Nephi" == "NePhi ");
  print("Nephi".trim().toLowerCase() == "NePhi ".trim().toLowerCase());
  print("Nikola.Tesla@whatever.com");
  print("nikola.tesla@whatever.com");
  "012345".length;
  List<String> words =
      "These are four     words.".replaceAll(RegExp(" +"), " ").split(" ");
  print(words);
  print("  111".indexOf("1"));
  print("  111".lastIndexOf("1"));
  final isUsername = "user.USER_ID@user.user".startsWith("user.");
  print(isUsername);
  "Hello world it's crazy these days!".substring(5);
  print("Hello world it's crazy these days!".replaceAll("crazy", "sane"));
  final characters = "Hello World!".split("");
  List<int> charCodes = [];
  print("Hello World!".codeUnits);
  final List<String> nephi = [
    "Dude",
    "Runner",
    "Swimmer",
    "Wannabe Dart programmer",
  ];
  nephi.addAll(["Neflix junkie", "Future Dart Pro"]);
  print(nephi);
  var countries =
      List<String>.unmodifiable(["Australia", "New Zealand", "Singapore"]);
  // countries.add("Japan");
  {
    List<int> ints = [0, 1, 2, 3, 4, 5];
    bool add = true;
    if (add) ints.add(ints[ints.length - 1] + 1);
    print(ints);
  }
  {
    bool add = false;
    final list = List<int>.unmodifiable([
      0,
      1,
      2,
      3,
      4,
      ...add ? [-1, -2, -3] : [],
      5,
      if (add) 6,
      7,
      8,
      9
    ]);
    print(list);
  }
  bool add = false;
  Map<String, dynamic> userData = {
    "email": "nephi@sanchezmedical.org",
    "username": "nephi",
    "bmi": [],
    "diet": {
      "monday": 223,
      "tuesday": 732,
    },
    "is_healthy": true,
    "languages": ["en", "es"],
    ...add ? {} : {}
  };
  userData["email"];
}
