void main() {
  print('Hello world!');
  int myInt = 1;
  double myDouble = myInt.toDouble() + 0.55;
  myInt = myDouble.truncate();
  String a = "1";
  int b = int.parse(a);
  double c = double.parse(a);
  num d = 1;
  double e = d.toDouble();
  num f = e;
  num g = e.floor();
  bool myBoolean = false;
  String myStringBool = myBoolean.toString();
  String myString2 = "${myBoolean && 1 == 1}";
  num h = 55;
  final string4 = "h = ${h}";
  print(string4);
  final bin1 = 123123123.toRadixString(16);
  // 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  // 0, 1, 2
  // 0: 00
  // 1: 01
  // 2: 02
  // 3: 10
  // 4: 11
  // 5: 12
  // 6: 20
  // 7: 21
  // 8: 22
  // 9: 100
  {
    const n = 3.14;
    bool isNum = n is num;
    print("${isNum}");
  }
  {
    double n = 3.14;
    bool isNum = n.runtimeType == num;
    print("${isNum}");
  }

  dynamic addA(double a, dynamic b) {
    if (a.runtimeType == b.runtimeType) {
      if (a.runtimeType == double ||
          a.runtimeType == int ||
          a.runtimeType == String) {
        return a + b;
      }
    }
    return null;
  }

  dynamic addB(double a, dynamic b) {
    final tA = a.runtimeType;
    final tB = b.runtimeType;
    if (tA == tB) {
      if (tA == double || tA == int || tA == String) {
        return a + b;
      }
    }
    return null;
  }

  num addNums(num a, num b) => a + b;
  String addStrings(String a, String b) => a + b;

  dynamic result = addA(4.4, 4);
  if (result == null) {
    print("Addition not defined");
  } else {
    print("The sum is: ${result}");
  }

  double fahrenheitToCelcius(double temp) {
    return 0.4 * temp;
  }

  double? fetchTemperatureFromDb() {
    return null;
  }

  double? temperatureF = fetchTemperatureFromDb();

  if (temperatureF == null) {
    print("The temperature in your area is not availalable at this time.");
  } else {
    print("The temperature in your area is $temperatureF degrees F");
  }

  double? temperatureC = fahrenheitToCelcius(temperatureF ?? 0);

  if (temperatureC == null) {
    print("The temperature in your area is not availalable at this time.");
  } else {
    print("The temperature in your area is $temperatureC degrees C");
  }

  String? title;
  String? titleInUppercase = title?.toUpperCase();
  print(title);
}
