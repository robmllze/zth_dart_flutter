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

// Rewrite
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

bool _checkUsers() {
  return _db["users"] is Map<String, dynamic>;
  // if (_db.containsKey("users")) {
  //   return _db["users"] is Map<String, dynamic>;
  // }
  // return false;
}

bool deleteUser(String uuid) {
  final users = _db["users"]; // Copy
  if (users is Map<String, dynamic>) {
    // Now we know users is the righ type...
    final isRemoved = users.remove([uuid]) != null;
    if (isRemoved) {
      _db["users"] = users; // Rewrite
      return true;
    }
  }
  return false; // Database is corrupt or user does not exist.
}

// bool userExists(String uuid) {
// //  //final _ref = _db; // Reference
//   ////final _copy = Map<String, dynamic>.of(_db); // Copy
// }

// userExistence()
// updateUserData()
bool updateUser({
  required String uuid,
  String? name,
  int? age,
  String? occupation,
}) {
  if (_checkUsers()) {
    final users =
        (_db["users"] as Map<String, dynamic>).cast<String, dynamic>();
    if (users.containsKey(uuid)) {
      final user = (users[uuid] as Map).cast<String, dynamic>();
      if (name != null) user["name"] = name;
      if (age != null) user["age"] = age;
      if (occupation != null) user["occupation"] = occupation;
      // These two lines could be redundant:
      users[uuid] = user;
      _db["users"] = users;
      return true;
    } else {
      newUser(name: name!, age: age, occupation: occupation);
    }
  }
  return false;
}
