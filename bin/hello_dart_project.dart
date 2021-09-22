import 'dart:math';

void main(List<String> arguments) {
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, you got a six!');

  // for-in loop
  const myString = 'I ❤ Dart';

  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  // for-each loop
  // ignore: avoid_function_literals_in_foreach_calls
  myString.runes.forEach((element) => print(String.fromCharCode(element)));
}
