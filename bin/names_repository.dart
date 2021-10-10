import 'student.dart';

abstract class NamesRepository {
  factory NamesRepository(String givenName, String surname) =>
      Student(givenName, surname);

  String uppercaseFullName();
}
