enum Sex {
  MALE,
  FEMALE,
  BOTH,
}

enum PermissionLevel {
  P1,
  P2,
  P3,
}

class Address {
  final String street;
  final String line1;
  final String? line2;
  final String state;
  final String country;
  final String postCode;
  const Address({
    required this.street,
    required this.line1,
    this.line2,
    required this.state,
    required this.country,
    required this.postCode,
  });
}

abstract class BasePerson {
  final String nameFirst;
  final String nameLast;
  final List<String> namesMiddle;
  final String uuid;
  final Sex sex;
  final Address address;
  final PermissionLevel permissionLevel;
  const BasePerson({
    required this.nameFirst,
    required this.nameLast,
    required this.namesMiddle,
    required this.uuid,
    required this.sex,
    required this.address,
    required this.permissionLevel,
  });
}
