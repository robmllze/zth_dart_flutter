class myNewClass {
  @override
  get hasCode {
    //
  }
}

void main() {
  Set<int> mySet = {1, 2, 1, 2, 3, 4, 5, 6, 7};
  print(mySet);
  print({1, 2, 3, 1, 2, 3, 4}.toList());

  final myBadSet = {
    [1, 2, 3, 4, 5, 6],
    [2],
    [1, 2, 3, 4, 5, 6],
    [2]
  };
  print(2.hashCode == 2.hashCode);
  print([2].hashCode == [2].hashCode);
  print([2] == [2]);
  print(myBadSet);
}
