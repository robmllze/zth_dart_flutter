import 'package:flutter/material.dart';
import 'package:practice_lesson_31/my_todo_element.dart';

// 4 hours.

// https://nephitodo.web.app

void main() {
  runApp(const MyApp());
}

// Widget myApp() {
//   return const MaterialApp(
//       home: Scaffold(
//     body: SizedBox(),
//   ));
// }

// -----------------------------------------------------------------------------

List<ModelTodoElement> models = [
  ModelTodoElement("Present the vision to the team"),
  ModelTodoElement("Decide on the milestones"),
  ModelTodoElement("Work on the first milestone"),
];

// -----------------------------------------------------------------------------

class MyApp extends StatefulWidget {
  const MyApp() : super(key: null);

  @override
  State<MyApp> createState() => _MyAppState();
}

// -----------------------------------------------------------------------------

class _MyAppState extends State<MyApp> {
  @override
  Widget build(final context) {
    List<MyTodoElement> children = [];
    for (final model in models) {
      children.add(MyTodoElement(model));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: children,
          ),
        ),
        appBar: AppBar(
          title: Text("To Do List"),
        ),
        floatingActionButton: Column(
          children: [
            const Spacer(),
            IconButton(
              iconSize: 40.0,
              color: Colors.blue,
              onPressed: () {
                this.setState(() {
                  models.add(ModelTodoElement("dummy"));
                });
              },
              icon: Icon(
                Icons.add,
              ),
            ),
            IconButton(
              iconSize: 40.0,
              color: Colors.red,
              onPressed: () {
                this.setState(() {
                  models.removeAt(models.length - 1);
                });
              },
              icon: Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
