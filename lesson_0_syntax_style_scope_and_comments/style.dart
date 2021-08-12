// All Dart identifiers are either in CamelCase or all-caps SNAKE_CASE.

// Classes always start with Capital letters.
class MyClass {
  // Elements starting with _underscores are internally marked as "private" by
  // Dart which means they won't be accessible outside the scope of the file
  // they are defined in.
  var _myPrivateVariable;
  void _doNothing() => null;
}

class _MyPrivateClass {}

// Public varaibles always start with lowercase letters.
var myVariable;

// So do objects.
MyClass object = MyClass();

// Constants are always in all-caps.
const PI = 3.141592654;
const SPEED_OF_LIGHT = 299792458;
const SPEED_OF_LIGHT_MPH = 671000000;

// Enums are named like Classes and so are their options.
enum UserType {
  // This is the Dart standard.
  Guest,
  Admin,
  SuperAdmin,
  // But I prefer this because Enums are internally constants.
  GUEST,
  ADMIN,
  SUPER_ADMIN,
}

UserType userType = UserType.GUEST;
