Null doNothing() => null;

double add(final double a, final double b) => a + b;
double subrtact(final double a, final double b) => a - b;
double multiply(final double a, final double b) => a * b;
double divide(final double a, final double b) => a / b;

double subtractBad(a, b) {
  return a - b;
}

String format(double result) => "The result is $result";

typedef ComputeFunction = double Function(double, double);

double compute(
  final ComputeFunction function,
  double a,
  double b,
) =>
    function.call(a, b);

num largest2(final num a, final num b) => a > b ? a : b;
num smallest2(final num a, final num b) => a > b ? b : a;

num factorial(final num a) {
  if (a <= 0) return 1;
  return a * factorial(a - 1);
}

void main(final List<String> args) {
  print(args);
  //final double difference = subtractBad(true, 5); // Runtime error.
  final double sum = add(11, 22);
  final String formatted0 = format(sum);
  final String formatted1 = format(subrtact(11, 22));
  Function calculate = (double a, double b) => a % b;
  print(calculate(33, 10));
  calculate = add;
  double result = calculate(33, 10);
  print(result);
  calculate = subrtact;
  print(calculate(33, 10));
  print(() => "An inline function that returns a string");
  print(((a, b) => a > b ? a : b).call(99, 77));
}
