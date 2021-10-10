import 'grade.dart';
import 'person.dart';

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];
}
