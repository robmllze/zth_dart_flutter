import 'package:flutter/material.dart';

import 'my_home.dart';

// 4 hours.

// https://nephitodo.web.app

void main() {
  runApp(const MyApp());
}

// -----------------------------------------------------------------------------

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    return MaterialApp(
      home: const MyHome(),
    );
  }
}
