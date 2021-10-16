// ignore_for_file: unnecessary_this

import 'dart:async';

class Printer {
  var completer = Completer<String>();
  Printer() {
    // // Hey Dart, do this in the future!
    // this.completer.future.then((final value) {
    //   print(value);
    // });
  }

  void reset() {
    this.completer = Completer<String>();
  }

  void register() async {
    final value = await this.completer.future;
    print(value);
  }

  void hello() {
    //if (!this.completer.isCompleted) {
    this.completer.complete("Hello");
    //}
  }

  void world() {
    //if (!this.completer.isCompleted) {
    this.completer.complete("world");
    //}
  }
}

void main() {
  final printer = Printer();
  printer.register();
  printer.hello();
  printer.reset();
  printer.register();
  printer.world();
}
