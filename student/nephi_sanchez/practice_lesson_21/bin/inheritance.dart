// Class Inheritance

class _AnimalHidden {
  final double weightKg;
  final String name;
  final String group;
  _AnimalHidden({
    required this.name,
    required this.weightKg,
    required this.group,
  });
}

abstract class Animal1 {
  double weightKg = 0;
  String name = "";
  String group = "unknown";

  // Default constructor
  Animal1() {
    print("Animal1 constructed!");
  }
}

// "Super", also called a "base", "parent" or "mother" class.
abstract class Animal {
  final double weightKg;
  final String name;
  final String group;
  Animal({
    required this.name,
    required this.weightKg,
    required this.group,
  });
  // Named constructor.
  Animal.crocodile({
    required this.weightKg,
  })  : this.name = "crocodile",
        this.group = "reptile";
}

class Reptile1 extends Animal1 {}

class Reptile1B extends Animal1 {
  int property = 0;
  Reptile1B({required double weightKg, required String name}) {
    // No difference between "this" and "super" in this context.
    super.group = "reptile";
    this.name = name;
    super.weightKg = weightKg;
  }
}

abstract class Reptile extends Animal {
  Reptile({required double weightKg, required String name})
      : super(weightKg: weightKg, name: name, group: "reptile") {}
}

class Crocodile extends Animal {
  Crocodile({required double weightKg}) : super.crocodile(weightKg: weightKg) {}
}

class Aligator extends Reptile {
  Aligator({required double weightKg})
      : super(weightKg: weightKg, name: "aligator");
}
