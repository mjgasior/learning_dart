void main() {
  final Map<int, String> mapA = {};
  final mapB = <int, String>{};
  final mapC = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  print(mapC);

  print(mapC.keys);
  print(mapC.values);
  print(mapC.containsKey('cakes'));
  print(mapC.containsValue(37));

  for (var item in mapC.keys) {
    print(mapC[item]);
  }

  mapC.forEach((key, value) => print('$key -> $value'));

  // Higher order methods
  const table = [1, 2, 3, 4, 5];
  final result = table.map((number) => number * number);
  print(result);
}
