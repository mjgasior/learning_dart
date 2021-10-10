import 'student.dart';

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);

  static const minimumPracticeTime = 2;

  @override
  String get fullName => super.fullName + '!';
}
