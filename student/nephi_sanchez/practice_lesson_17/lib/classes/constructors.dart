// Empty class with a default empty constructor.
class Class0 {
  //Class0() {}
}

// Explicit default constructor.
class Class1 {
  Class1() {
    print("Yay! We created an instance of Class1.");
  }
}

// Using this in the constructor.
class Class2 {
  final int i;
  Class2(this.i);
}

class Class3 {
  late final int i;
  Class3(final int i) {
    this.i = i;
  }
}

// Optional i
class Class4 {
  int? i = 0;
  Class4([this.i]);
}

// Final, Optional i (#1)
class Class5 {
  late final int i;
  Class5([this.i = 0]);
}

// Final, Optional i (#2)
class Class6 {
  late final int i;
  Class6([int i = 0]) {
    this.i = i;
  }
}

// Complex construction.
class Class7 {
  late final int a, b, c, d;
  Class7(int a, {required int b, int? c, int d = 0}) {
    this.a = a;
    this.b = b + 1;
    this.c = c ?? b;
    this.d = d;
    print("Yay! We created an instance of Class7.");
  }
}

class Class8 {
  late final int a, b, c, d;
  Class8(this.a, {required this.b, this.c = 0, this.d = 0}) {
    print("Yay! We created an instance of Class8.");
  }
}

// Named constructors.
class Interpreter {
  late final String lang;
  Interpreter() {
    this.lang = "en";
  }
  Interpreter.lang(final String lang) {
    this.lang = lang;
  }
  Interpreter.langUpperCase(final String lang) {
    this.lang = lang.toUpperCase();
  }
}

class Vector2 {
  late final num x, y;

  Vector2(this.x, this.y) {
    this._printComponents();
    // More code here...
  }

  Vector2.zero() {
    this.x = 0;
    this.y = 0;
    this._printComponents();
    // More code here...
  }

  factory Vector2.zeroShort() {
    return Vector2(0, 0);
  }

  factory Vector2.deg0() {
    return Vector2(0, 1);
  }

  factory Vector2.deg90() {
    return Vector2(1, 0);
  }

  factory Vector2.deg180() {
    return Vector2(0, -1);
  }

  factory Vector2.deg270() {
    return Vector2(-1, 0);
  }

  void _printComponents() {
    print("x = ${this.x}, y = ${this.y}");
  }
}

// Getters and setters:
class Coordiante {
  double? _x, _y, _z;
  double w = 0;
  Coordiante([
    this._x,
    this._y,
    this._z,
  ]);
  double getX() => this._x ?? 0.0;
  double getY() => this._y ?? 0.0;
  double getZ() => this._z ?? 0.0;

  double get x {
    print("Returning x");
    return this._x ?? 0.0;
  }

  double get y => this._y ?? 0.0;
  double get z => this._z ?? 0.0;

  double a() => this._x ?? 0.0;

  set x(double value) {
    print("Setting x to $value");
    this._x = value;
  }
}
