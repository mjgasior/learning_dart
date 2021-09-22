import 'address.dart';
import 'user.dart';

void main() {
  final user = User(id: 42, name: 'Garry');
  final user2 = User(id: -2, name: 'Garry');

  print(user2);

  print(user);
  print(user.toJson());

  final address = Address('street', 55);
  print(address.number);
}
