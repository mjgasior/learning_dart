void main(List<String> arguments) {
  const result = 1 / 3;
  print('The result is $result');
  print('The result is ${result.toStringAsFixed(3)}');

  const multiline = '''
    this might
    not
      be
      even
        true!
tab unsafe!
  ''';
  print(multiline);

  print(r'raw \n string');
  print('not raw \n string');
}
