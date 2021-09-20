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

  dynamic a = 10;
  a = 'this is dynamic';
  print(a);

  var b = "this is string, but not dynamic";
  print(b);

  const c = "this is a constant";
  const int d = 10;
  print(c);
  print(d);

  final runtimeConstant = DateTime.now().hour;
  print(runtimeConstant);
}
