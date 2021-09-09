void main() {
  num a = 5.5;
  double b = 6.6;
  int c = 7;
  // Use the "as" operator only for "up" and "down" casting.
  // Note: This can cause a runtime error if used incorrectly.
  print(a as double); // "down" casting
  print(b as num); // "up" casting
  //print(c as double); // error, incompatible types for casting
  Map<dynamic, dynamic> dataRaw = {"d1": 1, "d2": 2};
  //final data0 = dataRaw as Map<String, dynamic>;

  // Use the ".cast()" for "sideways" casting.
  // Note: This can cause a runtime error if used incorrectly.
  final data1 = dataRaw.cast<String, dynamic>();
  final Map<String, dynamic> data2 = dataRaw.cast();
  print(data1);
  print(data2);
}
