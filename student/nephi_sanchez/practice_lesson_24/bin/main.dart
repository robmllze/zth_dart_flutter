// 2 hours

import 'dart:math';

import 'date_time.dart';

class TextPrinter {
  final String text;
  const TextPrinter(this.text);
  void printMe() {
    print(this.text);
  }
}

class TextPrinterChangable {
  String _text = "";
  TextPrinterChangable(this._text);
  // This method can change the internal data "_text";
  set text(String text) => this._text = text;
  void printMe() {
    print(this._text);
  }
}

const TEXT = "Food Genes & Me";
const myTitle = TextPrinter("Food Genes & Me");

// Final means that we cannit assign another object to it.
final myTitlleChangeable = TextPrinterChangable("Food Genes & Me");

final String myFinalString = "This is the best app.";

// How String works, how num, int and double works...
// Internal data cannot be changed. The value of the pointer can only change.
class MyString {
  final data;
  const MyString(this.data);
}

void part1() {
  myTitle.printMe();
  // Assigning a new object to the variable.
  //myFinalString = "This is not a very good app.";
  myTitlleChangeable.text = "Genetica Comida y Yo";

  //myTitlleChangeable = TextPrinterChangable("Kos Gene en Ek");
  myTitlleChangeable.printMe();

  // Refer to the object MyString("hello")
  var myString = MyString("hello");
  print(myString.data);
  print(myString.data.hashCode);

  // Don't refer to the MyString("hello") anymore, refer to a the object
  // MyString("world")
  myString = MyString("world");
  print(myString.data);
  print(myString.data.hashCode);

  testDateTime();
}

Future<void> printSlow(int value) async {
  final ms = Random().nextInt(1000);
  await Future.delayed(Duration(milliseconds: ms)); // wait for this line...
  print(value); // ...and then print
}

// A future is either completed or is pending.

Future<void> print1() => printSlow(1);
Future<void> print2() => printSlow(2);
Future<void> print3() => printSlow(3);
Future<void> print4() => printSlow(4);
Future<void> print5() => printSlow(5);
Future<void> print6() => printSlow(6);
printAll() async {
  // "await" means to wait for the future to complete before moving to the next line.
  await print1();
  await print2();
  await print3();
  await print4();
  await print5();
  await print6();
}

void printAsync1() async => printSlow(1);
void printAsync2() async => printSlow(2);
void printAsync3() async => printSlow(3);
void printAsync4() async => printSlow(4);
void printAsync5() async => printSlow(5);
void printAsync6() async => printSlow(6);
void printAllAsync() {
  printAsync1();
  printAsync2();
  printAsync3();
  printAsync4();
  printAsync5();
  printAsync6();
}

void part2() async {
  //printAll();
  //printAllAsync();

  printSlow(1);
  print("Hello World 1");

  await printSlow(2);
  print("Hello World 2");
}

void main() {
  //part1();
  part2();
}
