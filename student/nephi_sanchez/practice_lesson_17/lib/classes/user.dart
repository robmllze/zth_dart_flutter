// -----------------------------------------------------------------------------
//
// USER.DART
//
// Author: Nephi Sanchez
// Email: nephi.sanchez@gmail.com
// Date: 9/16/2021
//
// -----------------------------------------------------------------------------

import 'address.dart' as my_address_library;

class User {
  final String id, nameFirst, nameLast;
  final int? age;
  final double? weightLb;
  final my_address_library.Address? address;
  User({
    required this.id,
    required this.nameFirst,
    required this.nameLast,
    this.age,
    this.weightLb,
    this.address,
  });
  Map<String, dynamic> toMap() => {
        this.id: {
          "pi": my_address_library.PI,
          "name_first": this.nameFirst,
          "name_last": this.nameLast,
          if (age != null) "age": age,
          if (weightLb != null) "weightLb": weightLb,
          if (address != null) "address": address!.toMap(),
        },
      };
}
