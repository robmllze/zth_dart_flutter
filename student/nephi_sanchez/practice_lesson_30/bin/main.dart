/// This is an example of how Flutter widgets work behind the scenes. Note that
/// we're using pure dart. Flutter is a framework written in Dart.

// -----------------------------------------------------------------------------

abstract class Widget {
  // ...
}

// -----------------------------------------------------------------------------

abstract class StatefulWidget extends Widget {
  late final State _state;

  // Method to override.
  State createState();

  StatefulWidget() {
    this._state = createState();
    print('State created and assigend to the member "_state"');
    this._state.initState();
  }

  // ...
}

// -----------------------------------------------------------------------------

abstract class State<T extends StatefulWidget> {
  void initState() {
    print("Parent/super state initialized.");
  }

  // ...
}

// -----------------------------------------------------------------------------

class MyWidget extends StatefulWidget {
  MyWidget({Widget? child});
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// -----------------------------------------------------------------------------

class _MyWidgetState extends State<MyWidget> {
  // void test() {
  //   this.initState();
  // }

  // Overriding the reference and not the actual method
  @override
  void initState() {
    super.initState();
    print("Child state initialized.");
  }
}

// -----------------------------------------------------------------------------

void runApp(Widget widget) {
  //
}

// -----------------------------------------------------------------------------

void whatsMyType<A extends num, B, C>(A typeA, B typeB, C typeC) {
  print(typeA.runtimeType);
  print(typeB.runtimeType);
  print(typeC.runtimeType);
}

// -----------------------------------------------------------------------------

void main() {
  //whatsMyType<double, MyWidget, MyWidget>(1, MyWidget(), MyWidget());
  // final hello = HallouPrinter();
  // hello.show();
  runApp(
    MyWidget(
      child: MyWidget(
        child: MyWidget(
            //
            ),
      ),
    ),
  );
}

// -----------------------------------------------------------------------------

abstract class BasePrinter {
  // Abstract method
  num show();

  // Non-abstract method.
  void showNonAbstract() {
    print("Hello from BasePrinter");
  }
}

abstract class HolaPrinter extends BasePrinter {
  //
}

class HallouPrinter extends BasePrinter {
  @override
  num show() {
    //super.show();
    print("Hallou from HallouPrinter");
    return 5;
  }

  @override
  void showNonAbstract() {
    super.showNonAbstract();
    print("Hallou from HallouPrinter");
  }
}
