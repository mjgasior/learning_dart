import 'address.dart';
import 'user.dart';

void main() {
  final user = User(id: 42, name: 'Garry');

  print(user);
  print(user.toJson());

  final address = Address('street', 55);
  print(address.number);
}
