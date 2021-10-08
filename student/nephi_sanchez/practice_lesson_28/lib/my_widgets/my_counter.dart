import 'dart:async';

import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  // This line links our widget with a state.
  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  Timer? timer;
  int counter = 0;

  void updateCounter(final Timer timer1) {
    // This tells Flutter to schedule a rebuild.
    this.setState(() {
      this.counter++;
      // This will execute when the timer reaches 10 seconds.
      if (this.counter == 10) {
        timer1.cancel();
      }
    });
  }

  // This will be called when the state is created.
  @override
  void initState() {
    this.timer = Timer.periodic(const Duration(seconds: 1), this.updateCounter);
    super.initState();
  }

  // This will be called when the state is disposed.
  @override
  void dispose() {
    this.timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(_) {
    return Text(
      "Count: ${this.counter}",
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
