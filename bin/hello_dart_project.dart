import 'dart:math';

void main() {
  print(fullName('Johnny', 'Good', 'Doc'));
  print(fullName('Peter', 'Steele'));
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  }
  return '$first $last';
}
