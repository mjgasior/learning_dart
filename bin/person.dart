abstract class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  String uppercaseSurname();

  @override
  String toString() => fullName;
}
