import 'dart:math';

void main(List<String> arguments) {
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six!');
}
