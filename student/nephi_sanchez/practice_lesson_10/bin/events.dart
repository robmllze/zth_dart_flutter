// ignore_for_file: dead_code

void onTap() => print("The user tapped the widget!");

void onDoubleTap() {
  print("The user double-tapped the widget!");
}

void onMouseOver() {
  print("The user hovered overthe widget!");
}

typedef EventFunction = void Function();

void handleEvents({
  required EventFunction? onTap,
  EventFunction? onDoubleTap,
  EventFunction? onMouseOver,
}) {
  bool eventOccuredTap = false;
  bool eventOccuredDoubleTap = true;
  bool eventOccuredMousedOver = false;

  // Listen to events and call the appropriate functions when the events occur.

  if (eventOccuredTap) {
    onTap?.call();
  }
  if (eventOccuredDoubleTap) {
    onDoubleTap?.call();
  }
  if (eventOccuredMousedOver) {
    onMouseOver?.call();
  }
}

void main() {
  bool appIsRunning = true;
  int n = 0;
  while (appIsRunning) {
    if (n++ > 10) appIsRunning = false;
    handleEvents(
      onTap: () {},
    );
    handleEvents(
      onTap: () {
        print("Tap tap tap!");
      },
    );
    handleEvents(
      onDoubleTap: () => print("Double tap tap tap!"),
      onMouseOver: () => null,
      onTap: onTap,
    );
  }
  closeApp();
}

void closeApp() {}
