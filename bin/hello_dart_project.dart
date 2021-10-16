import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final file = File('assets/lorem.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );

  final fileDecode = File('assets/lorem.txt');
  final streamDecode = fileDecode.openRead();
  await for (var data in streamDecode.transform(utf8.decoder)) {
    print(data);
  }
}
