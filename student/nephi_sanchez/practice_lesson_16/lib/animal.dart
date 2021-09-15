class Animal1 {
  String name = "";
}

class Animal2 {
  String name = "";
  Animal2(final String name) {
    this.name = name;
  }
}

class Animal3 {
  String name = "";
  Animal3(this.name);
}

class Animal {
  double? _weightInKg;
  double? _weightInLb;
  String species;
  final String race;
  final String? name;

  /// Constructs an Animal instance, will throw error of type String unless
  /// weight is defined in only one measure, KG or LB
  Animal({
    double? weightInKg,
    double? weightInLb,
    required this.species,
    required this.race,
    this.name,
  }) {
    this._weightInKg = weightInKg;
    this._weightInLb = weightInLb;
    assert((this._weightInKg == null) != (this._weightInLb == null),
        "Either _weightInKg or _weightInLb must be defined but not both.");
    if (this._weightInKg != null) {
      this._weightInLb = this._weightInKg! * 2.20462;
    } else {
      this._weightInKg = this._weightInLb! / 2.20462;
    }
    print("An instance of Animal has been created");
  }
  void printProperties() {
    print("Name: ${this.name}\n"
        "Species: ${this.species}\n"
        "weightInKg: ${this._weightInKg}\n"
        "weightInLb: ${this._weightInLb}\n"
        "race: ${this.race}");
  }

  List<String> listNaturalHabitats() {
    return [];
  }

  double get weightInKg => this._weightInKg!;
  double weightInLb() => this._weightInKg!;
}
