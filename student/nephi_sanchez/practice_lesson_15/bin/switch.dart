import 'dart:io';

void main() {
  String? animal;
  do {
    print("What's your favorite animal?");
    final animalRaw = stdin.readLineSync();
    animal = animalRaw?.trim().toLowerCase();
  } while (processAnimals(animal));
}

bool processAnimals(String? animal) {
  // Switches can take any type of data or objects that are comparable.
  switch (animal) {
    case "exit":
      return false;
    case "tortoise":
      print("Tortoises are mightly slow!");
      return true;
    case "bear":
      print("Oh my! Bears can be dangerous!");
      break;
    // If `animal` is either null or none of the above.
    default:
      print("That animal is unfamiliar to me!");
  }
  print("P.S. This is not a tortoise.");
  return true;
}
