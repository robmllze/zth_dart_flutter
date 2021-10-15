import 'package:uuid/uuid.dart';

class ModelTodoElement {
  String message;
  bool isDone;
  late final String uuid;
  ModelTodoElement(this.message, [this.isDone = false]) {
    this.uuid = Uuid().v1();
  }
  @override
  String toString() {
    return this.message;
  }
}
