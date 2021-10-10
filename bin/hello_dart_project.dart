import 'person.dart';
import 'school_band_member.dart';
import 'student.dart';
import 'student_athlete.dart';

void main() {
  final pete = Student('Peter', 'Steele');
  print(pete.fullName);

  final josh = SchoolBandMember('Josh', 'Silver');
  print(josh.fullName);

  final kenny = StudentAthlete('Kenny', 'Hickey');
  print(kenny.fullName);

  print(josh is Object);
  print(josh is Person);
  print(josh is Student);
  print(josh is SchoolBandMember);
  print(josh is! StudentAthlete);

  print(kenny.uppercaseSurname());
  print(kenny.uppercaseFullName());
}
