import 'dart:math';

void main() {
  print(fullName('Johnny', 'Good', 'Doc'));
  print(fullName('Peter', 'Steele'));

  print(withinTolerance(15));
  print(withinTolerance(15, min: 0, max: 20));
}

String fullName(String first, String last, [String title = 'sir']) {
  return '$title $first $last';
}

bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}
