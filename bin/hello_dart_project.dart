import 'user.dart';

void main() {
  final user = User()
    ..name = "Garry"
    ..id = 42;

  print(user);
  print(user.toJson());
}
