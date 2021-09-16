import 'package:uuid/uuid.dart';
import 'classes/address.dart';
import 'classes/constructors.dart';
import 'classes/user.dart';

late final int myLate;
void main() {
  final a = Class5();
  print(a.i);

  // Named constructors.
  final interpreter = Interpreter();
  print(interpreter.lang);
  final interpreterEs = Interpreter.lang("es");
  print(interpreterEs.lang);
  final myList0 = List.empty();
  final myList1 = List.filled(4, 3);

  // Factory constructors.
  final vec0 = Vector2(0, 0);
  final vec1 = Vector2.zero();

  // Make sure late variables are initialized before calling them.
  try {
    print(myLate);
  } catch (_) {
    print("myLate not initialized!");
  }

  //

  User user0 = User(
    id: Uuid().v1(),
    nameFirst: "Nephi",
    nameLast: "Sanchez",
    address: Address(
        streetLine1: "820 Lacy Ln.",
        streetLine2: "Apt 1",
        city: "Las Vegas",
        postCode: "89107",
        country: "USA"),
  );
  // print(user0.toMap());

  final myCoodinate = Coordiante(77.4, -55.6);
  //print(myCoodinate.getZ());

  myCoodinate.x = 6;
  myCoodinate.w = 7;

  print(myCoodinate.x);
  print(myCoodinate.w);
  print(myCoodinate.a());
}
