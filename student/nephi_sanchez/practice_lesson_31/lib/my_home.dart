import 'package:flutter/material.dart';
import 'my_dialog_new_item.dart';
import 'my_todo_element.dart';

// -----------------------------------------------------------------------------

List<ModelTodoElement> models = [
  ModelTodoElement("Present the vision to the team"),
  ModelTodoElement("Decide on the milestones"),
  ModelTodoElement("Work on the first milestone"),
];

// -----------------------------------------------------------------------------

class MyHome extends StatefulWidget {
  const MyHome() : super(key: null);

  @override
  State<MyHome> createState() => _MyHomeState();
}

// -----------------------------------------------------------------------------

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    List<MyTodoElement> children = [];
    for (final model in models) {
      children.add(MyTodoElement(model));
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: children,
        ),
      ),
      appBar: AppBar(
        title: Text("Nephi's To-Do List"),
      ),
      floatingActionButton: Column(
        children: [
          const Spacer(),
          IconButton(
            iconSize: 40.0,
            color: Colors.blue,
            onPressed: () async {
              final result = await myDialogNewItemShow(context);
              if (result != null) {
                this.setState(() {
                  models.add(ModelTodoElement(result));
                });
              }
            },
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            iconSize: 40.0,
            color: Colors.red,
            onPressed: () {
              if (models.length > 0) {
                this.setState(() {
                  models.removeAt(models.length - 1);
                });
              }
            },
            icon: Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
