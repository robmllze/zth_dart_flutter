import 'base_person.dart';
import 'properties_doctor.dart';

class Person1 extends BasePerson with PropertiesDoctor {
  Person1({
    required String namesFirst,
    required String namesLast,
    required List<String> namesMiddle,
    required Address address,
    required Sex sex,
    required String namerFirst,
    required PermissionLevel permissionLevel,
    required String uuid,
  }) : super(
          nameFirst: namesFirst,
          nameLast: namesLast,
          namesMiddle: namesMiddle,
          address: address,
          sex: sex,
          permissionLevel: permissionLevel,
          uuid: uuid,
        ) {
    //
  }
}
