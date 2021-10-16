import 'dart:io';

Future<void> main() async {
  final fileSync = File('assets/lorem.txt');
  final contents = await fileSync.readAsString();
  print("Read file sync");
  print(contents);

  print("Read file async - loop");
  final fileAsync = File('assets/lorem.txt');
  final streamAsync = fileAsync.openRead();
  await for (var data in streamAsync) {
    print(data.length);
  }

  print("Read file async - callback");
  final fileStream = File('assets/lorem.txt');
  final stream = fileStream.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
  );
}
