import 'grade.dart';
import 'greetings.dart';
import 'names_repository.dart';
import 'person.dart';

class Student extends Person with Greetings implements NamesRepository {
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
