class Address {
  Address(this._street, this._number);

  String _street = '';
  String get street => _street;
  set street(String street) => _street = street;

  int _number = 0;
  int get value => _number;
  set value(int number) => _number = number;

  bool get isOddNumber => _number.isOdd;
}
