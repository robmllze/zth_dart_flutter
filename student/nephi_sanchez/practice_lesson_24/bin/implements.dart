abstract class MyPerson {
  String? name;
  String? surname;
  DateTime? dob;
  //MyPerson(); // Default constructor.
  MyPerson(this.name, this.surname, this.dob); // Custom constuctor.
}

class Persona0 extends MyPerson {
  //Persona0() : super(); // Default constructor.
  Persona0(String nombre, DateTime fdn)
      : super(nombre, "", fdn); // Custom constuctor.
}

// Implements are like class templates.
class Persona1 implements MyPerson {
  String? name;
  String? surname;
  DateTime? dob;
  Persona1.surname(this.surname);
}

void test() {
  final MyPerson persona = Persona0("Rob", DateTime(1992, 3, 27));
  persona.name = "Nephi";
  print(persona.name);
  var persoon = Persona1.surname("Sanchez");
}

// class Persona1 implements MyPersonTemplate {}
