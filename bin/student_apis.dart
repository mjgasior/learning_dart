import 'student.dart';

extension Greeter on Student {
  String introduceYourself() {
    return 'My surname is $surname and this is me!';
  }
}
