import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//
//
//

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(_) {
    return const MaterialApp(title: "Flutter Demo", home: MyHomePage());
  }
}

//
//
//

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//
//
//

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(_) {
    return const Scaffold(
      body: SizedBox(),
    );
  }
}
