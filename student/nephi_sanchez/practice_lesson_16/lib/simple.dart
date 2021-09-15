class MyNum {
  num value = 0;
  MyNum(num value) {
    this.value = value;
    print("An instance of MyNum has been created.");
  }
}

class MyInt extends MyNum {
  // Calling parent constructor
  MyInt(int value) : super(value) {
    print("An instance of MyInt has been created.");
  }

  MyDouble convertToDouble() => MyDouble(super.value.toDouble());
}

class MyDouble extends MyNum {
  // Calling parent constructor
  MyDouble(double value) : super(value) {
    print("An instance of MyDouble has been created.");
  }

  MyInt convertToInt() => MyInt(super.value.toInt());
}

class MyExtendedNum extends MyNum {
  // Calling parent constructor
  MyExtendedNum(num value) : super(value) {
    print("An instance of MyChildNum has been created.");
  }
}
