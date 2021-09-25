extension MapAddition on Map<dynamic, dynamic> {
  Map<dynamic, dynamic> operator +(Map<dynamic, dynamic> other) {
    // Map result = {};
    // result.addAll(this);
    // result.addAll(other);
    // return result;
    return {
      ...this,
      ...other,
    };
  }
}

extension MyIntExtension on int {}

dynamic addThings(dynamic thing1, dynamic thing2) {
  return thing1 + thing2;
}

T1 addThings1<T1>(dynamic thing1, dynamic thing2) {
  return (thing1 + thing2) as T1;
}

class MyTestData<T1, T2, T3> {
  T1? myT1;
  T2? myT2;
  T3? myT3;
}
