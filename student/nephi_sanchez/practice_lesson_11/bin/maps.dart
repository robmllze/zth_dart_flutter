import 'package:uuid/uuid.dart';

void main() {
  Map<dynamic, dynamic> data; // Bad!
  data = {
    1: "hello",
    "world": 2,
  };
  Set<String> uid = {};
  var idk = {}; // Defauts to Map
  print(data);
  final uuid = Uuid().v1();
  {
    Map<String, dynamic> data = {
      "index": 1,
      //"uuid": uuid,
      "uname": "nephisanchez",
      "email": "nephisanchez@gmail.com",
      "profile_picture": "gs://hello-testing-123.appspot.com/$uuid/profile.png",
    };

    final check = data["uuid"];
    print(data);
  }
}
