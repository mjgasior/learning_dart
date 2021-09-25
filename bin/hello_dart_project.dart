import 'address.dart';
import 'user.dart';

void main() {
  final user = User(id: 42, name: 'Garry');
  final user2 = User(id: -2, name: 'Garry');

  print(user2);

  print(user);
  print(user.toJson());

  final address = Address('street', 55);
  print(address.street);
  address.street = 'Puszkarska';
  print(address.street);

  final ray = User.ray();
  print(ray);

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}
