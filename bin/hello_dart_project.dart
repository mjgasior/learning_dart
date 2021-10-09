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
}
