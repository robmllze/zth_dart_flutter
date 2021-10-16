import 'dart:async';

import 'package:flutter/material.dart';

Future<String?> myDialogNewItemShow(BuildContext context) {
  final controller = TextEditingController();
  final completer = Completer<String?>();
  // Waiting until the dialog is closed.
  showDialog(
    context: context,
    builder: (_) {
      return Column(
        children: [
          const SizedBox(height: 50.0),
          SizedBox(
            width: 300.0,
            height: 200.0,
            child: Scaffold(
              body: Column(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "New To-Do",
                    style: TextStyle(fontSize: 28.0),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(controller: controller),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 4,
                        child: ElevatedButton(
                          onPressed: () {
                            completer.complete(null);
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        flex: 4,
                        child: ElevatedButton(
                          onPressed: () {
                            completer.complete(controller.text);
                            Navigator.pop(context);
                          },
                          child: Text("Add"),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
  return completer.future;
}
