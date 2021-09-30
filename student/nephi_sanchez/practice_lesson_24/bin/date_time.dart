extension FormattedDateTime on DateTime {
  get formatted => "Date: ${this.year}/${this.month}/${this.day} "
      "Time: ${this.hour}:${this.minute}:${this.second}";
}

void testDateTime() {
  String helloWorld = "Hello "
      "World";

  final now = DateTime.now(); // Default is "local"
  final nowLocal = now.toLocal();
  print("Ahorita en Australia la hora es: ${nowLocal.formatted}");

  final nowUtc = DateTime.now().toUtc();
  print("Ahorita en Reykjavik la hora es: ${nowUtc.formatted}");

  final nowNevadaMs =
      nowUtc.microsecondsSinceEpoch - Duration(hours: 7).inMicroseconds;
  final nowNevada = DateTime.fromMicrosecondsSinceEpoch(nowNevadaMs);

  print("Nevada Incorrect (toLocal): ${nowNevada.toLocal().formatted}");
  print("Nevada (toUtc): ${nowNevada.toUtc().formatted}");
}
