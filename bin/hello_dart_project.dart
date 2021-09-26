import 'email.dart';
import 'my_singleton.dart';
import 'user.dart';

void main() {
  final user = User(id: 1, name: "Mike");
  print(user);

  final email = Email('mike@${Email.domain}');
  print(email.value);

  final singleton = MySingleton.instance;
  print(singleton);

  double? fontSize;
  print(fontSize);
  fontSize ??= 20.5;
  print(fontSize);

  int? age;
  print(age?.toDouble());

  double labelFontSize = fontSize!;
  print(labelFontSize);
}
