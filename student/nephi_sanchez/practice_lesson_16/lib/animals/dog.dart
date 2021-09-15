import '../animal.dart';

class Dog extends Animal {
  Dog({
    double? weightInKg,
    double? weightInLb,
    required String race,
    required String name,
  }) : super(
          weightInKg: weightInKg,
          weightInLb: weightInLb,
          race: race,
          name: name,
          species: "Canine",
        );
}
