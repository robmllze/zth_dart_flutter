import 'package:flutter/material.dart';

import 'my_text.dart';

// ignore_for_file: use_key_in_widget_constructors

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: MyText(),
        ),
      ),
    );
  }
}
