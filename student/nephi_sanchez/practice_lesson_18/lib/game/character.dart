import 'body.dart';

class Character {
  final String nickname;
  double x, y;
  final Body body;
  Character({
    required this.nickname,
    this.x = 0.0,
    this.y = 0.0,
  }) : body = Body.character(
          xOffset: 0.0,
          yOffset: -16.0,
        );
}
