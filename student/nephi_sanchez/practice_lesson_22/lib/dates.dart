enum Month {
  JAN, // index: 0
  FEB,
  MAR,
  APR,
  MAY,
  JUN,
  JUL,
  AUG,
  SEP,
  OCT,
  NOV,
  DEC, // index: 12
}

extension MonthMethods on Month {
  String get stringCode {
    // return s.substring((s.length - 3)).toLowerCase();
    // return this.toString().split(".")[1].toLowerCase();
    // return this.toString().substring(6).toLowerCase();
    final s = this.toString();
    return s.substring(s.indexOf(".") + 1).toLowerCase();
  }

  int get intCode {
    return this.index + 1;
  }

  String get twoCode {
    return this.intCode.toString().padLeft(2, "0");
  }
}

class Date {
  final int year;
  final int month;
  final int day;
  const Date({required this.year, required this.month, required this.day});
  // factory Date.nephi(int year, Month month, int year) {
  //   return Date(year: year, )
  // }
}

// "9/24/2021" ---> Date as an extension on a String + throw error


