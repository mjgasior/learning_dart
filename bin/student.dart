import 'grade.dart';
import 'person.dart';

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';

  @override
  String uppercaseSurname() {
    return givenName.toUpperCase();
  }
}
