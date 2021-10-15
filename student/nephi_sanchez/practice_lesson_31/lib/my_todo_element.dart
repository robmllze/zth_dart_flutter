import 'package:flutter/material.dart';

import 'model_todo_element.dart';
export 'model_todo_element.dart';

// -----------------------------------------------------------------------------

class MyTodoElement extends StatefulWidget {
  final ModelTodoElement model;
  const MyTodoElement(this.model) : super(key: null);

  @override
  _MyTodoElementState createState() => _MyTodoElementState();
}

// -----------------------------------------------------------------------------

class _MyTodoElementState extends State<MyTodoElement> {
  @override
  Widget build(_) {
    return SizedBox(
      child: Row(
        children: [
          Checkbox(
            value: this.widget.model.isDone,
            onChanged: (_) {
              this.setState(() {
                this.widget.model.isDone = !this.widget.model.isDone;
              });
            },
          ),
          Expanded(
            child: Text(widget.model.message),
          ),
        ],
      ),
    );
  }
}
