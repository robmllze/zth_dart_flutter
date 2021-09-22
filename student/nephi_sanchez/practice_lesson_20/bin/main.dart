mixin Properties {
  int heightFt = 6;
  int heightIn = 1;
  double weightLb = 210.0;
  double weightAsKg() => 0.45 * weightLb;
  // Cannot construct;
  //Properties() {}
}

class PersonType1 with Properties {
  //
  PersonType1() {
    this.heightFt = 5;
  }
}

class PersonType2 with Properties {
  //
}

mixin DbPropertiesBase {
  String? id;
  String? nameFirst;
  String? nameLast;
  String? nameMiddle;
}

mixin DbPropertiesAdmin {
  String? key;
}

class MyCustomer with DbPropertiesBase {}

class MyAdmin with DbPropertiesBase, DbPropertiesAdmin {}

void main() {
  var p1 = PersonType1();
  p1.heightFt = 5;
}
