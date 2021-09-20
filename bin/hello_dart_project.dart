import 'dart:math';

void main(List<String> arguments) {
  double angle = 45.45;

  print(sin(angle.round() * pi / 180));

  int base = 22;

  print(base / 7); // regular division that gives 3.14...
  print(base ~/ 7); // integral division that gives 3

  if (base.isEven) {
    print('The base is even!');
  }

  print('Hello world!');
}
