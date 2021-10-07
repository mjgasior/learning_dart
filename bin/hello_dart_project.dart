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

  final someSetA = <int>{1, 2, 3, 2, 1};
  // the duplications are automatically removed do to the character of a set
  print(someSetA);

  print("Operations");
  final Set<int> someSetB = {1, 2, 3};
  print(someSetB.contains(1));
  print(someSetB.contains(99));

  someSetB.add(99);
  print(someSetB.contains(99));
  someSetB.addAll([1, 2, 3, 4, 5]);
  print(someSetB);

  someSetB.remove(1);
  print(someSetB);

  print("Intersection and unions");
  print(someSetB.intersection(someSetA));
  print(someSetB.union(someSetA));
}
