mixin Properties {
  late int heightFt;
  int heightIn = 1;
  double weightLb = 210.0;
  double weightAsKg() => 0.45 * weightLb;
  // Cannot construct;
  //Properties() {}
}

class PersonType1 with Properties {
  //
  PersonType1({required int heightFt}) {
    this.heightFt = heightFt;
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
  var p1 = PersonType1(heightFt: 5);
  p1.heightFt = 5;
}
