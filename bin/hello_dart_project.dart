void main() {
  const List<int> table = [1, 2, 3, 4, 5];
  print(table);
  final Iterable<int> result = table.map((number) => number * number);
  print(result);

  const Set<int> set = {1, 2, 3, 4, 5};
  print(set);

  print(set.toList());
  print(result.toList());

  print(table.where((number) => number.isEven));
  print(table.reduce((sum, number) => sum + number));
  print(
    table.fold<int>(
      0,
      (int sum, int number) => sum + number,
    ),
  );

  final desserts = ['cookies', 'pie', 'cake', 'donuts', 'candy', 'brownies'];
  desserts.sort();
  print(desserts);
  print(desserts.reversed);

  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts);
  print(desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase()));
}
