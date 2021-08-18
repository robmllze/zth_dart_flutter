void main() {
  // Varaibles.
  {
    print("\nCORE VARIABLES:\n");
    Null null1;
    dynamic dynamic0;
    var var0;
    bool bool0 = false;
    final final0;
    num num0;
    int int0;
    double double0;
    const double CONST_0 = 3.141592654;
    // CONST_0 = 5; // Compile time constants cannot be assigned after they're
    // defined because they're not varaibles by definition.
    late int lateInt0;
    String string0;
    print(bool0);
    print(dynamic0); // Assigned to null by default
    print(var0); // Assigned to null by default
    //print(final0); // Compilation error
    //print(int0); // Compilation error
    //print(double0); // Compilation error
    print(CONST_0);
    //print(lateInt0); // Compilation error
  }
  // Casting.
  {
    print("\nCASTING:\n");
    final double e = 2.71828;
    print("e: ${e}");
    //int int0 = e;
    num num0 = e;
    print("num0: ${num0}");
    final int eAsInt0 = e.toInt();
    final eAsInt1 = e.truncate();
    int eAsInt2 = e.round();
    eAsInt2 = eAsInt2 + 0;
    print("eAsInt0: ${eAsInt0}");
    print("eAsInt1: ${eAsInt1}");
    print("eAsInt2: ${eAsInt2}");
    final parsedNum0 = num.parse("0");
    final parsedInt0 = int.parse("5");
    final parsedDouble0 = double.parse("5.5");
    final parsedDouble1 = double.parse(".5");
    // double parsedDouble3 = double.parse("five"); // Runtime error
    print("parsedNum0: ${parsedNum0}");
    print("parsedInt0: ${parsedInt0}");
    print("parsedDouble0: ${parsedDouble0}");
    print("parsedDouble1: ${parsedDouble1}");
  }
  // Operators.
  {
    print("\nOPERATORS:\n");
    final a = 1.0 * 2.0;
    print(a);
    final b = 1.0 / 2.5;
    print(b);
    double c = 1.0;
    c++;
    c--;
    print(c);
    double d = 0.0;
    print(--d);
    print(d--);
    print(d);
    // Integer Division.
    final e = 11.0 ~/ 2.5;
    // Remainder Operator.
    final f = 11.0 % 2.5;
    print("e: ${e}");
    print("f: ${f}");
    int g = 0;
    g += 5;
    g -= 2;
    g *= 10;
    //g /= 2; // Compilation error
    g ~/= 2;
    print("g: ${g}");
    // Comparisons.
    {
      bool a = 5 == 2;
      bool b = 5 != 2;
      bool c = 5 > 2;
      bool d = 5 < 2;
      bool e = 5 >= 2;
      bool f = 5 <= 2;
      bool g = true || true;
      bool h = true || false;
      bool i = !false;
      bool j = false || !false;
      bool k = true && false;
      bool l = false && false;
      bool m = true == !(!(false && true) && true);
    }
    // Bitwise Operators.
    {
      /* ~ & | ^ << >> */
      final a = 4321.toRadixString(2);
      final b = 1234.toRadixString(2);
      final notA = (~4321).toRadixString(2);
      final String aAndB = (4321 & 1234).toRadixString(2);
      final aOrB = (4321 | 1234).toRadixString(2);
      final aXorB = (4321 ^ 1234).toRadixString(2);
      final aLeft4 = (4321 << 4).toRadixString(2);
      final aRight4 = (4321 >> 4).toRadixString(2);
      print("~4321 = ~${a} = ${notA} = ${~4321}");
      print("4321 & 1234 = $a & $b = ${aAndB} = ${4321 & 1234}");
      print("4321 | 1234 = $a | $b = ${aOrB} = ${4321 | 1234}");
      print("4321 ^ 1234 = $a ^ $b = ${aXorB} = ${4321 ^ 1234}");
      print("4321 << 4 = $a << 4 = ${aLeft4} = ${4321 << 4}");
      print("4321 >> 4 = $a >> 4 = ${aRight4} = ${4321 >> 4}");
    }
  }
  // is.
  {
    print("\nIS:\n");
    bool isDouble0 = 3.14 is double;
    print("${isDouble0}");
    bool isDouble1 = 3.14 is! double;
    print("${isDouble1}");
    bool isDouble2 = 3.14 is int;
    print("${isDouble2}");
    {
      dynamic a = 1.1;
      print("num: ${a is num}");
      print("int: ${a is int}");
      print("double: ${a is double}");
      print("bool: ${a is bool}");
      print("String: ${a is String}");
      print("dynamic: ${a is dynamic}");
      print("Null: ${a is Null}");
    }
  }
  // runtimeType.
  {
    print("\nRUNTIME TYPE:\n");
    bool isDouble0 = 3.14.runtimeType == double;
    print("${isDouble0}");
    bool isDouble1 = 3.14.runtimeType != double;
    print("${isDouble1}");
    bool isDouble2 = 3.14.runtimeType == int;
    print("${isDouble2}");
    {
      dynamic a = 1.1;
      print("num: ${a.runtimeType == num}");
      print("int: ${a.runtimeType == int}");
      print("double: ${a.runtimeType == double}");
      print("bool: ${a.runtimeType == bool}");
      final Type typeOfA = a.runtimeType;
      print("String: ${typeOfA == String}");
      print("dynamic: ${typeOfA == dynamic}");
      print("Null: ${typeOfA == Null}");
    }
    // Null Safety.
    {
      dynamic noNeedForQuestionMark;
      var guessMyType;
      int? myInt;
      bool? myBool;
      double? myDouble;
      num myNum;
      myDouble = 55.2;
      myDouble = null;
      //myNum = null; // Compilation error
      final int a = myInt ?? 22;
      //final int b = myInt;  // Compilation error
      //final int c = myInt!; // Runtime error
    }
    // Null Safety with ? operator.
    {
      LuckyFn maybleGetPi = (bool shouldI) => shouldI ? 3.141592654 : null;
      LuckyFn maybleGetE = (bool shouldI) => shouldI ? 2.71828 : null;
      maybleGetPi(true);
      maybleGetPi.call(false); // Can also be called with the .call method.
      LuckyFn? getLuckyFunction(int luckyNumber) {
        if (luckyNumber == 2) return maybleGetE;
        if (luckyNumber == 3) return maybleGetE;
        return null;
      }

      final myLuckyFunctionA = getLuckyFunction(2);
      final myLuckyFunctionB = getLuckyFunction(0);
      //myLuckyFunction(true); // Compilation error
      final a = myLuckyFunctionA!(true);
      //myLuckyFunctionB!(true); // Runtime error
      final b = myLuckyFunctionB?.call(true);
      print(b);
      final c = myLuckyFunctionB?.call(true) ?? 2.0;
      print(c);
    }
    // The if statement.
    {
      final double mark = 50.25;
      String message = "YOU ";
      if (mark < 50.0) {
        message += "FAILED";
      } else if (mark > 50.0) {
        message += "PASSED";
      } else {
        message += "JUST MADE IT";
      }
      print(message);
    }
    // The conditional statements.
    {
      final double mark = 50.25;
      final String message = "YOU " +
          (mark > 50.0
              ? "PASSED"
              : mark < 50.0
                  ? "FAILED"
                  : "JUST MADE IT");
      print(message);
    }
    {
      Real myReal = 5;
    }
  }
}

// Must be global.
typedef LuckyFn = double? Function(bool);
typedef Real = num;
