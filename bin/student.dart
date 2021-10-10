import 'grade.dart';
import 'names_repository.dart';
import 'person.dart';

class Student extends Person implements NamesRepository {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';

  @override
  String uppercaseSurname() {
    return givenName.toUpperCase();
  }

  @override
  String uppercaseFullName() {
    return fullName.toUpperCase();
  }
}
