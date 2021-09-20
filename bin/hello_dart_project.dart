import 'dart:math';

void main(List<String> arguments) {
  final angle = sin(45);
  print(angle is String);
  print(angle is num);
  print(angle.round() is num);

  final int roundedAngle = angle.toInt();
  print(roundedAngle);

  final actuallyDouble = 3.toDouble();
  print(actuallyDouble is double);

  final double actuallyDouble2 = 3;
  print(actuallyDouble2 is double);

  final double actuallyDouble3 = 3.0;
  print(actuallyDouble3 is double);

  // casting
  const num theNumber = 3;
  final convert = theNumber as int;
  print(convert.isEven); // num does not have the isEven method
}
