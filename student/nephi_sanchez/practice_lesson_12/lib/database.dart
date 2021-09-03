import 'package:uuid/uuid.dart';

Map<String, dynamic> _db = {};

void changeEntry(String key, dynamic value) {
  _db[key] = [value];
  // _db.addAll({
  //   key: value,
  // });
}

void addEntry(String key, dynamic value) {
  if (_db[key] == null) {
    _db[key] = [value];
    return;
  }
  // _db[key] is guaranteed to be a List.
  (_db[key] as List).add(value);
}

void newUser({
  required String name,
  int? age,
  String? occupation,
}) {
  final String uuid = Uuid().v1();
  addEntry("users", {
    uuid: {
      "name": name,
      ...age != null ? {"age": age} : {},
      if (occupation != null) "occupation": occupation,
    }
  });
}

void printDb() => print(_db);

void removeEntry(String key) {
  _db.remove(key);
}

bool keyExists(String key) {
  return _db.containsKey(key);
}

void cleanNulls0() {
  List<String> toRemove = [];
  for (final entry in _db.entries) {
    if (entry.value == null) toRemove.add(entry.key);
  }
  for (final key in toRemove) {
    _db.remove(key);
  }
}

void cleanNulls() {
  _db.removeWhere((_, dynamic value) => value != null);
}

void cleanStrings() {
  _db.removeWhere((_, dynamic value) => value == "");
}

void cleanNegatives() {
  _db.removeWhere((_, dynamic value) => value is num && value < 0);
}
