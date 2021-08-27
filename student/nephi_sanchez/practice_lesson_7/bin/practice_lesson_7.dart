// Control Flow

num findSmallest(final List<num> values) {
  num min = values[0];
  for (int i = 1; i < values.length; i++) {
    if (values[i] < min) {
      min = values[i];
    }
  }
  return min;
}

List<num> sortAsc1(final List<num> values) {
  List<num> res = [];
  while (values.isNotEmpty) {
    int indexMin = 0;
    num min = values[0];
    for (int i = 1; i < values.length; i++) {
      if (values[i] < min) {
        min = values[i];
        indexMin = i;
      }
    }
    values.removeAt(indexMin);
    res.add(min);
  }
  return res;
}

// List<num> sortAsc0(List<num> values) {
//   // bool swapped = true;
//   // while (swapped) {

//   // }

//   for (int i = 1; i < values.length; i++) {
//     int a, b;
//     if (i == values.length - 1) {}
//   }
// }

// List<num> sortAsc(List<num> values) {
//   List<num> newList = [];
//   int target = values.length;
//   do{
//   num addition = findSmallest(values);
//   newList.add(addition);
//   values = values.removeIndex
//   }
//   while(newList.length < target);
// }

void main() {
  // int counter = 0;
  // while (counter++ < 10) {
  //   print(counter);
  // }
  // for (int counter = 0; counter++ < 10;) {
  //   print(counter);
  // }
  // counter = 0;
  // for (;counter++ < 10;) {
  //   print(counter);
  // }

  // counter = 0;
  // print(counter++);
  // counter = 0;
  // print(++counter);
  // counter = 0;
  // print(counter += 1);

  // do {
  //   print(counter);
  // } while (counter < 10);

  List<int> myInts = [1, 2, 3, 4, 5, 6];
  List<int> myIntsReversed = myInts.reversed.toList();
  Iterable<int> myIntsReversedIt = myInts.reversed;
  //print(myInts.length);

  print(findSmallest(myInts));

  final _scores = [33, 52, 14, 2, 5, 99, 445, 12, 213];
  print(sortAsc1([33, 52, 14, 2, 5, 99, 445, 12, 213]));
  var sorted0 = _scores.sort();
  var sorted1 = (_scores..sort()).reversed.toList();
  var sorted2 = () {
    _scores.sort();
    return _scores.reversed.toList();
  }.call();

  print(sorted2);

  // Definition
  String Function() returnHello = () {
    return "Hello";
  };

  var helloFn1 = (() => "Hello World")();
  var helloFn2 = () {
    return "Hello World";
  }();
  var helloFn3 = (() => "Hello World").call();

  print(returnHello());

  print(_scores);

  [1, 2, 3, 4, 5, 6, 7].reversed.toList();

  [1, 2, 3, 4, 5, 6, 7].length;

  // Value of first element.
  [1, 2, 3, 4, 5, 6, 7].first; // 1
  [1, 2, 3, 4, 5, 6, 7].last; // 7

  // value = c++, value = ++c;
  var list = [1, 2, 3, 4, 5, 6, 7]..sort();
  var boolean = [1, 2, 3, 4, 5, 6, 7].isNotEmpty;

  var added = [1, 2, 3, 4, 5, 6, 7].add(8); // returns void
  var smallest = findSmallest([1, 2, 3, 4, 5, 6, 7]);

  // Double-dot notation:
  {
    var list1 = [1, 2, 3, 4, 5, 6, 7];
    list1.add(11);
    print(list1); // [1, 2, 3, 4, 5, 6, 7, 11]
  }
  {
    var list1 = [1, 2, 3, 4, 5, 6, 7];
    print(list1..add(11)); // [1, 2, 3, 4, 5, 6, 7, 11]
  }
  List newList = [1, 2, "3", 4, 5]..addAll([1, 2, null, 4]);
  List<dynamic> myMixed = ["age", 30, "name", "nephi"];
  List<Null> myNull = [null, null, null, null];
  List<void> myVoid = [null, null, null, null];

  var list1 = [1, 2, 3, 4, 5, 6, 7];
  list1.sublist(2, 4);

  // for (;;) { print("x"); }

  [1, 2, 3, 4, 5, 6, 7].forEach((int el) {
    print(el);
  });
}

/*


num add(a, b) => a + b;

class Pair {
  double a = 0;
  double b = 0;
  Pair(this.a, this.b);
  double add() => a + b;
}

void main() {
  List<double> newList = [];
  [1, 2, 3, 4, 5, 6, 7].forEach(
  
    
  (int el) {
    newList.add(el/2.0);
  }
  
  );
  print(newList);
  
  final myPair = Pair(5, 7);
  print(myPair.add());
  
  
}


 */
