import 'dart:collection';

void moveFwd(Queue<dynamic> input, dynamic newValue) {
  input.removeLast();
  input.addFirst(newValue);
}

void moveBwd(Queue<dynamic> input, dynamic newValue) {
  input.removeFirst();
  input.addLast(newValue);
}

void main() {
  final myQueue = Queue();
  myQueue.addAll([1, 2, 3, 4, 5, 6, 7, 8, "'9'"]);
  print(myQueue);
  moveFwd(myQueue, 77);
  print(myQueue);
  moveFwd(myQueue, 77);
}
