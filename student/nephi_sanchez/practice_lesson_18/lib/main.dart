import 'game/body.dart';

// 2 hours

void main() {
  var playerBody = Body.character(xOffset: 100, yOffset: 0);
  var healthKitBody = Body.box(xOffset: 100, yOffset: 0);

  print(playerBody.id);
  print(healthKitBody.id);
  print(Body.idLast);
}
