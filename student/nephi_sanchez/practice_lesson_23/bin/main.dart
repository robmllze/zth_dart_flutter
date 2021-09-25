import 'templates.dart';

// 2 hours

void main() {
  print(addThings(6, 2));
  print(addThings(6.0, 2));
  print(addThings(6.0, 2.0));
  print(addThings("6", "2"));
  print(addThings([6.0], [2.0]));
  // print(addThings(<dynamic, dynamic>{6.0: null},
  //     <dynamic, dynamic>{2.0: null})); // has no instance method '+'
  print({"hello": "everyone"} + {"hola": "a todos"});
  //print(addThings(6, "2"));
  //print(addThings1<int>(6, 2));
  final myTestData = MyTestData<int, String, List<dynamic>>();
  myTestData.myT1;
  myTestData.myT2;
  myTestData.myT3;
}
