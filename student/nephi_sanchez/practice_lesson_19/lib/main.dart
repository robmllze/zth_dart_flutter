// (2 hours)

// UPCOMING:

// GitHub

// Classes:

// enum
// default toString()
// mixin
// operator overloading with Vector2 class
// extends (inheritance), implements (interface), with (mixin)
// extensions

// Importing and Exporting
// Working With DateTime and Timestamp

enum UserType {
  ADMIN_SUPER,
  ADMIN,
  BUSINESS,
  STANDARD,
  GUEST,
}

void signIn({
  required String email,
  required String password,
  required UserType userType,
}) {
  // Some code here...
  switch (userType) {
    case UserType.ADMIN_SUPER:
      print("User with email '$email' logged in as a Super Admin.");
      break;
    case UserType.ADMIN:
      print("User with email '$email' logged in as an Admin.");
      break;
    case UserType.BUSINESS:
      print("User with email '$email' logged in as a Business.");
      break;
    case UserType.STANDARD:
      print("User with email '$email' logged in as a Standard.");
      break;
    case UserType.GUEST:
      print("User with email '$email' logged in as a Guest.");
      break;
  }
  // Some code here...
}

void signInUseString({
  required String email,
  required String password,
  required String userType,
}) {
  // Some code here...
  switch (userType.toUpperCase()) {
    case "ADMIN_SUPER":
      print("User with email '$email' logged in as a Super Admin.");
      break;
    case "ADMIN":
      print("User with email '$email' logged in as an Admin.");
      break;
    case "BUSINESS":
      print("User with email '$email' logged in as a Business.");
      break;
    case "STANDARD":
      print("User with email '$email' logged in as a Standard.");
      break;
    case "GUEST":
      print("User with email '$email' logged in as a Guest.");
      break;
    default:
      throw "User could not be logged in. The userType specified is invalid.";
  }
  // Some code here...
}

// Futures:
void main() {
  {
    signIn(
      email: "nephi.sanchez@gmail.com",
      password: "1234",
      userType: UserType.ADMIN_SUPER,
    );
    signInUseString(
      email: "robmllze.com",
      password: "4321",
      userType: "GUES_T",
    );
  }
  {
    final personNephi0 = Person("Nephi");
    final personNephi1 = Person("Nephi");
    final personRob = Person("Rob", "Mollentze");

    print(personNephi0.toString());
    print(personRob.toString());

    // Implicitly calls the toString methods:
    print(personNephi0);
    print(personRob);

    print(personNephi0 == personNephi1);
  }
  {
    final personaNephi0 = Persona("NePhi");
    final personaNephi1 = Persona("nephi");
    final personaRob = Persona("Rob", "Mollentze");

    // Implicitly calls the toString methods:
    print(personaNephi0);
    print(personaRob);

    print(personaNephi0 == personaNephi1);
  }
}

class Person extends Object {
  final String name, surname;
  Person(this.name, [this.surname = ""]);
}

class Persona {
  final String name, surname;
  Persona(this.name, [this.surname = ""]);

  @override
  String toString() {
    return "$name $surname";
  }

  @override
  bool operator ==(Object other) {
    if (other is Persona) {
      return this.name.toLowerCase() == other.name.toLowerCase() &&
          this.surname.toLowerCase() == other.surname.toLowerCase();
    }
    return false;
  }

  // By default, if two object has the same hashCode, they are equal to one
  // another.
  // @override
  // int get hashCode => super.hashCode;
}
