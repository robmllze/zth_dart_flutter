List<int> incrementEvensExternal(final List<int> values) {
  List<int> resolved = [];
  for (final value in values) {
    resolved.add(value + (value.isOdd ? 1 : 0));
  }
  return resolved;
}

void incrementEvensInternal(List<int> values) {
  for (int n = 0; n < values.length; n++) {
    if (values[n].isOdd) values[n]++;
  }
}

void incrementEvensInternalNotWorking(List<int> values) {
  // Copies element in values to value.
  for (int value in values) {
    if (value.isOdd) value++;
  }
}

// Similar to:
// final myConstList = List<int>.unmodifiable([1, 2, 3, 4, 5, 6]);
const myConstList = [1, 2, 3, 4, 5, 6];

/// Returns a list of two elements, the first maximum value in the list and
/// the second its index.
List<num> findMax(final List<num> values) {
  int iMax = 0;
  num max = values[iMax];
  for (int i = 1; i < values.length; i++) {
    if (max < values[i]) {
      max = values[i];
      iMax = i;
    }
  }
  return List<num>.unmodifiable([max, iMax]);
}

/// Returns a list of two elements, the first minimum value in the list and
/// the second its index.
List<num> findMin(final List<num> values) {
  int iMin = 0;
  num max = values[iMin];
  for (int i = 1; i < values.length; i++) {
    if (max > values[i]) {
      max = values[i];
      iMin = i;
    }
  }
  return List<num>.unmodifiable([max, iMin]);
}

// FIXED!!!
// Sorts a list of numbers in descending order using the newSort-algorithm.
List<num> sortNewSort(final List<num> values) {
  final copy = List<num>.of(values);
  final List<num> res = [];
  while (copy.isNotEmpty) {
    final List<num> min = findMax(copy);
    res.add(min.first);
    copy.removeAt(min.last.toInt());
  }
  return res;
}

/// Sorts a list of numbers in descending order using the swapSort-algorithm.
void sortSwapSort(List<num> values) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < values.length - 1; i++) {
      final current = values[i];
      final next = values[i + 1];
      if (current < next) {
        values[i] = next;
        values[i + 1] = current;
        swapped = true;
      }
    }
  } while (swapped);
}

void main() {
  // Cannot reassign this list.
  final scores = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  scores.add(3);
  scores[0] = 7;

  // Can reassign.
  var unmodifiable = List<int>.unmodifiable([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  //unmodifiable.add(4); // Runtime error
  unmodifiable = [1, 2, 3]; // Modifiable
  unmodifiable.add(4); // No runtime error

  print("Scores: $scores");
  final incremented = incrementEvensExternal(scores);
  print("Scores: $scores");
  print("Incremented: $incremented");
  incrementEvensInternal(scores); // Modifies value of `scores`
  print("Scores: $scores");

  print(findMax([1, 4, 2, 6, 3, 7, 5, 8, 9, 1, 23, 4]));

  // References:
  List<String> original = ["Australia", "USA", "New Zealand"];
  print(original);
  List<String> reference = original;
  List<String> copy = List<String>.of(original);
  //reference.add("Singapore");
  copy.add("Guatemala");
  print(original);
  print(copy);

  // NewSort algorithm vs. SwapSort algorithm.
  final temperatures = [70, 56, 78.8, 2, 3, 70, 75, 99, 112, 35, 43];
  print("Original: $temperatures");
  print("NewSort: ${sortNewSort(temperatures)}");
  sortSwapSort(temperatures); // Modifies value of `temperatures`
  print("SwapSort: $temperatures");

  // Using iterators (implicit):
  for (final current in temperatures) {
    print("Current = " + current.toString());
  }

  // Using iterators (explicit):
  for (final it = temperatures.iterator; it.moveNext();) {
    print("Current = " + it.current.toString());
  }
}
