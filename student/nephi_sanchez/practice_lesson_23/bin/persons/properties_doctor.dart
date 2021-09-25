import 'base_person.dart';

enum TypeDoctor {
  GP,
  SPECIALIST_HEART,
  DENTIST,
  VET,
}

mixin PropertiesDoctor {
  PermissionLevel _highestPermissionLevel = PermissionLevel.P1;
  List<TypeDoctor> _doctorType = [];
  List<String> _doctorCredentials = [];
}
