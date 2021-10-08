import 'my_widgets/my_counter.dart';
import 'package:flutter/material.dart';
import 'test.dart';

void main() {
  test();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: const MyCounter(),
        ),
      ),
    );
  }
}
