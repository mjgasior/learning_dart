import 'address.dart';
import 'user.dart';

void main() {
  final user = User(42, 'Garry');

  print(user);
  print(user.toJson());

  final address = Address('street', 55);
  print(address.number);
}
