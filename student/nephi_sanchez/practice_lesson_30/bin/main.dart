/// This is an example of how Flutter widgets work behind the scenes. Note that
/// we're using pure dart. Flutter is a framework written in Dart.

// -----------------------------------------------------------------------------

abstract class Widget {
  // ...
}

// -----------------------------------------------------------------------------

abstract class StatefulWidget extends Widget {
  late final State _state;

  // Function to override.
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

void main() {
  runApp(
    MyWidget(
      child: MyWidget(
        child: MyWidget(),
      ),
    ),
  );
}
