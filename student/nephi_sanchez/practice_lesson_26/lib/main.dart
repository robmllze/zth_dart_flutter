import 'package:flutter/material.dart' show Colors;
import 'package:flutter/cupertino.dart';

void main() {
  //runApp(const MaterialApp());
  const myTextStyle = TextStyle(
    color: Colors.indigo,
    fontSize: 28.0,
    //color: Color.fromRGBO(255, 0, 128, 0.5),
    //color: Color(0xffff3333),
  );

  const myText = Text("Hello Nephi!", style: myTextStyle);
  runApp(
    const CupertinoApp(
      home: Center(
        child: myText,
      ),
    ),
  );
}


// import 'package:flutter/cupertino.dart';

// void main() {
//   //runApp(const MaterialApp());
//   runApp(const CupertinoApp(
//     home: Text("Hello Nephi"),
//   ));
// }
