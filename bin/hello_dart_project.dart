void main() {
  var list = ['a', 'b', 'c'];
  print(list.first);
  print(list.last);

  // spread operator
  var list2 = ['d', 'e', 'f'];
  print([...list, ...list2]);

  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);

  // collection if
  const peanutAllergy = true;

  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);

  // collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);

  final Set<int> someSetA = {};
  final someSetB = <int>{};
}
