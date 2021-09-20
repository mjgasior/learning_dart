import 'dart:math';

void main(List<String> arguments) {
  final angle = sin(45);
  print(angle is String);
  print(angle is num);
  print(angle.round() is num);
}
