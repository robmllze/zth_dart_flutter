// Does absolutely nothing.
Null doNothing() => null;

// Adds two numbers.
double add(final double a, final double b) => a + b;

// Subtracts two numbers.
double subtract(double a, double b) => a - b;

// Multiplies two numbers.
double multiply(double a, double b) => a * b;

// Divides two numbers.
double divide(double a, double b) => a / b;

// Subtracts two numbers. If subtraction isn't defined for a and b, then this
// function will throw an error.
double subtractBad(a, b) {
  return a - b;
}

// Prints a nice message.
String format(double result) => "The result is $result";

/// Finds the largest of the two numbers `a` and `b`.
num largest2(num a, num b) => a > b ? a : b;

/// Finds the smallest of the two numbers `a` and `b`.
num smallest2(num a, num b) => a > b ? b : a;

/// Computes the factorial of a positive or zero number `a`.
num factorial(final num a) {
  if (a <= 0) return 1;
  return a * factorial(a - 1);
}

/// Calculates the average of 1-4 numbers.
double calcAverageA(
  double a, [
  double? b,
  double? c,
  double? d,
]) {
  if (b == null) return a;
  if (c == null) return (a + b) / 2.0; // Note that "else" is not needed here.
  if (d == null) return (a + b + c) / 3.0;
  return (a + b + c + d) / 4.0;
}

double calcAverage(List<double> values) {
  double sum = 0.0;
  for (double value in values) {
    sum += value;
  }
  return sum / values.length;
}

/// Calculates the area of a trapezium.
///
/// Please see: https://brilliant.org/wiki/area-of-a-trapezium/
num calcAreaTrapezium({
  required num a,
  required num b,
  required num h,
}) {
  return (a + b) / 2.0 * h;
}

/// Impractical, and prone to error.
double calcAverageB({
  required double a,
  double? b,
  double? c,
  double? d,
}) {
  if (b == null) return a;
  if (c == null) return (a + b) / 2.0;
  if (d == null) return (a + b + c) / 3.0;
  return (a + b + c + d) / 4.0;
}

typedef Computation = double Function(double, double); // Alias

/// Performs a `computation` on two numbers `a` and `b`.
double compute(
  Computation computation,
  double a,
  double b,
) =>
    computation.call(a, b);

// Functions can be grouped with a class.
class MyBasicCalculations {
  //static get add => add; // Stack-Overflow error.
  static double Function(double, double) add() => (a, b) => a + b;
  static Computation subract() => (a, b) => a - b;
  static Computation multiply() => (a, b) => a * b;
  // More on getters and setters later...
  static Computation get divide => (a, b) => a / b;
  static Computation get average => (a, b) => (a + b) / 2.0;
  static Computation get divideAndTrunc => (a, b) => (a / b).truncateToDouble();
  static Computation get rem => (a, b) => (a % b);
}

void stackOverflow() {
  stackOverflow();
}

List<num> sortAsc1(List<num> values) {
  List<num> res = [];
  while (values.length != 0) {
    int indexMin = 0;
    num min = values[0];
    for (int i = 1; i < values.length; i++) {
      if (values[i] < min) {
        min = values[i];
        indexMin = i;
      }
    }
    values.removeAt(indexMin);
    res.add(min);
  }
  return res;
}

void main(final List<String> args) {
  // print(args);
  // //final double difference = subtractBad(true, 5); // Runtime error.
  // final double sum = add(11, 22);
  // final String formatted0 = format(sum);
  // final String formatted1 = format(subtract(11, 22));
  // Function calculate = (double a, double b) => a % b;
  // print(calculate(33, 10));
  // calculate = add;
  // double result = calculate(33, 10);
  // print(result);
  // calculate = subtract;
  // print(calculate(33, 10));
  // print(() => "An anonymous or 'Lambda' function that returns a string");
  // final a = 99, b = 77;
  // final largest0 = a > b ? a : b;
  // final largest1 = ((a, b) => a > b ? a : b).call(99, 77); // Impractical
  // final average = compute((a, b) => (a + b) / 2, 10, 50); // Practical
  // print(average);
  // print(calcAverageA(1));
  // print(calcAverageA(1, 2));
  // print(calcAverageA(1, 2, 3));
  // print(calcAverageA(1, 2, 3, 4));
  // //calcAverageA(1, 2, 3, 4, 5); // Compilation error
  // print(calcAreaTrapezium(b: 6, a: 2, h: 1.5).toDouble()); // Sensible.
  // print(calcAverageB(a: 1, b: 2, c: 3, d: 4)); // Impractical.
  // MyBasicCalculations.add().call(1, 2);
  // MyBasicCalculations.divide.call(1, 2);
  // MyBasicCalculations.divide(1, 2);
  // calcAverage([1, 2, 3, 4]);
  // //print(MyBasicCalculations.add()(12, 2));
}
