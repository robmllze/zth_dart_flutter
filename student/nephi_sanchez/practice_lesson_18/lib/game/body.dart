class Body {
  static int _idLast = -1;
  static final Set<int> _idsDestroyed = {};
  static int get idLast => Body._idLast;
  static Set<int> get idsDestroyed => Body._idsDestroyed;

  final String type;
  final double xOffset, yOffset;
  final double width, height;
  final bool isSolid;
  final int id;

  Body({
    required this.type,
    required this.xOffset,
    required this.yOffset,
    this.width = 64.0,
    this.height = 128.0,
    this.isSolid = true,
  }) : this.id = ++Body._idLast;

  Body.box({
    required this.xOffset,
    required this.yOffset,
    this.width = 48.0,
    this.height = 48.0,
    this.isSolid = true,
  })  : this.type = "box",
        this.id = ++Body._idLast;

  Body.trigger({
    required this.xOffset,
    required this.yOffset,
    this.width = 256.0,
    this.height = 256.0,
    this.isSolid = false,
  })  : this.type = "trigger",
        this.id = ++Body._idLast;

  Body.character({
    required this.xOffset,
    required this.yOffset,
    this.width = 64.0,
    this.height = 128.0,
    this.isSolid = true,
  })  : this.type = "character",
        this.id = ++_idLast;

  void destroy() {
    Body._idsDestroyed.add(this.id);
  }

  void undestroy() {
    Body._idsDestroyed.remove(this.id);
  }

  bool get isDestroyed {
    return Body._idsDestroyed.contains(this.id);
  }

  bool get isNotDestroyed {
    return !this.isDestroyed;
  }

  bool doesCollide({
    required double x,
    required double y,
    required Body other,
    required double otherX,
    required double otherY,
  }) {
    // World position of this character's body.
    final thisWorldX = x + this.xOffset;
    final thisWorldY = y + this.yOffset;

    // World position of other character's body.
    final otherWorldX = otherX + other.xOffset;
    final otherWorldY = otherX + other.yOffset;

    // Take both positions and sizes into consideration.
    return false;
  }
}
