import 'person.dart';
import 'student.dart';

void main() {
  final johnny = Person('Johnny', 'Kelly');
  print(johnny.fullName);

  final pete = Student('Peter', 'Steele');
  print(pete.fullName);
}
