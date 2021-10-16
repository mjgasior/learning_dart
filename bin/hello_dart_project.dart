import 'dart:io';

Future<void> main() async {
  final file = File('assets/lorem.txt');
  final contents = await file.readAsString();
  print(contents);
}
