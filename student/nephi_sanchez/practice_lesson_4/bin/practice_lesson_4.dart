num add(num a, num b) {
  return a + b;
}

/// Computes the remainder of two numbers `a` and `b`.
num rem(num a, num b) => a % b;

num div(num a, num b) => a ~/ b;
num divide(num a, num b) => a / b;
num largest2(num a, num b) => a > b ? a : b;
num smallest2(num a, num b) {
  // Checks if a is less than b.
  if (a < b) return a;
  return b;
}

num avg2(num a, num b) => (a + b) / 2.0;

// Recursive function:

/// Computes the factorial of a positive or zero number `a`.
num factorial(final num a) {
  if (a <= 0) return 1;
  return a * factorial(a - 1);
}

typedef Comp = num Function(num, num);

num computation(
  Comp comp,
  num a,
  num b,
) {
  return 100.0 * comp.call(a, b);
}

void main() {
  Comp? compute;
  // compute(1, 2);
  // compute.call(1, 2);

  num? result = compute?.call(5, 2);

  print(factorial(5));

  print(factorial.runtimeType == Comp);
  print(factorial is Comp);
  print(avg2 is Comp);

  computation(avg2, 1, 2);
  avg2(1, 2);
  computation(div, 1, 2);
  computation(largest2, 1, 2);
  computation(smallest2, 1, 2);
}
