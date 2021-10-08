import 'dart:async';

void printImediately(String message) {
  print(message);
}

void printAfter2SecondsA(String message) async {
  await Future.delayed(const Duration(seconds: 2));
  print(message);
}

Future<void> printAfter2SecondsB(String message) {
  return Future.delayed(const Duration(seconds: 2)).then((_) {
    print(message);
  });
}

Future<void> printAfter2SecondsC(String message) async {
  await Future.delayed(const Duration(seconds: 2));
  print(message);
}

void test() async {
  await printAfter2SecondsC("World!");
  printImediately("Hello");
}
