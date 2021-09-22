// ignore_for_file: prefer_function_declarations_over_variables

void main() {
  print(fullName('Johnny', 'Good', 'Doc'));
  print(fullName('Peter', 'Steele'));

  print(withinTolerance(15));
  print(withinTolerance(15, min: 0, max: 20));
  print(withinToleranceCheck(value: 15, min: 0, max: 20));

  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(10, 5));

  Function division = (int a, int b) => a / b;
  print(division(10, 5));
}

String fullName(String first, String last, [String title = 'sir']) {
  return '$title $first $last';
}

bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

bool withinToleranceCheck({required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}
