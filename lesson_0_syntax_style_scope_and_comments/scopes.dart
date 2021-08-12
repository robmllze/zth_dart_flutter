void main() {
  {
    final number = 1;
    print('What number will be printed here? $number');
    {
      // print('What number will be printed here? $number'); // This will cause
      // a error because `number` in this scope exists but isn't defined yet.
      final number = 2;
      {
        final number = 3;
        {
          {
            {
              print('What number will be printed here? $number');
            }
          }
        }
      }
    }
  }
  // print(number); // This will cause an error because no variable named
  // "number" is defined in this scope.

  // Scopes can also be used to group parts of your code. This is often useful
  // in debugging:
  {
    final distance = 20.0;
    final time = 3.0;
    final velocity = distance / time;
    print('Velocity = ${velocity.toStringAsFixed(2)}');
  }
  {
    final distance = 40.0;
    final time = 3.5;
    final velocity = distance / time;
    print('Velocity = ${velocity.toStringAsFixed(2)}');
  }
  {
    final distance = 60.0;
    final time = 4.0;
    final velocity = distance / time;
    print('Velocity = ${velocity.toStringAsFixed(2)}');
  }
}
