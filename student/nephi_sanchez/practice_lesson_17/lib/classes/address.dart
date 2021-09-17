// -----------------------------------------------------------------------------
//
// ADDRESS.DART
//
// Author: Nephi Sanchez
// Email: nephi.sanchez@gmail.com
// Date: 9/16/2021
//
// -----------------------------------------------------------------------------

/// Holds a standard address.
class Address {
  late final String streetLine1, streetLine2, city, postCode, country;

  //
  //
  //

  Address({
    required this.streetLine1,
    required this.streetLine2,
    required this.city,
    required this.postCode,
    required this.country,
  });

  //
  //
  //

  Address.fromMap(Map<String, String> from) {
    try {
      final streetLine1 = from["streetLine1"];
      if (streetLine1 != null) {
        this.streetLine1 = streetLine1;
      } else {
        throw 1;
      }
      this.streetLine2 = from["streetLine2"] ?? "";
      final city = from["city"];
      if (city != null) {
        this.city = city;
      } else {
        throw "The input field 'city' is not defined.";
      }
      final postCode = from["postCode"];
      if (postCode != null) {
        this.postCode = postCode;
      } else {
        throw "The input field 'postCode' is not defined.";
      }
      final country = from["country"];
      if (country != null) {
        this.country = country;
      } else {
        throw "The input field 'country' is not defined.";
      }
    } catch (e) {
      //print(e);
      //rethrow;
      throw "The input map `from` is invalid.";
    }
  }

  //
  //
  //

  Map<String, String> toMap() => {
        "streetLine1": this.streetLine1,
        "streetLine2": this.streetLine2,
        "city": this.city,
        "postCode": this.postCode,
        "country": this.country,
      };
}

// -----------------------------------------------------------------------------

void printAddress(Address address) {
  print(address.toMap());
}

const PI = 3.1416;
