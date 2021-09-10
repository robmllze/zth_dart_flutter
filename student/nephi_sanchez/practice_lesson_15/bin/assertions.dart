class DontDivideByZeroException {}

num ratioAssert(num numerator, num demomenator) {
  assert(demomenator != 0, "The denomenator cannot be zero.");
  return numerator / demomenator;
}

num ratioThrowString(num numerator, num demomenator) {
  if (demomenator == 0) throw "The denomenator cannot be zero.";
  return numerator / demomenator;
}

num ratioThrowNum(num numerator, num demomenator) {
  if (demomenator == 0) throw -1;
  return numerator / demomenator;
}

num ratioThrowObject(num numerator, num demomenator) {
  if (demomenator == 0) throw DontDivideByZeroException;
  return numerator / demomenator;
}

String readNameFromDb(String uuid) {
  return "nephi";
}

void main() {
  // String? name = readNameFromDb("12312313");
  // if (name != null) {
  //   //
  // }

  // String name2 = "";
  // try {
  //   name2 = readNameFromDb("12312313");
  //   // This line.
  // } catch (_) {}

  try {
    double d0 = double.parse("5f5");
  } catch (_) // on FormatException catch (e) {
  {
    print("Cannot parse a non-number to a double");
  }

  double? d1 = double.tryParse("5g5");

  //print(ratioAssert(3, 2));
  try {
    //print(ratioThrowString(3, 0));
    //print(ratioThrowNum(3, 0));
    print(ratioThrowObject(3, 0));
  } on String catch (e) {
    print("Error! Message: $e");
  } on int catch (e) {
    print("Error: $e");
  }
  // } on DontDivideByZeroException catch (e) {
  //   print("Come on you know you can't divide by 0!");
  // } catch (e) // on dynamic catch (e)
}
