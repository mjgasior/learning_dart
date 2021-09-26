class User {
  const User({this.id = _anonymousId, this.name = _anonymousName})
      : assert(id >= 0);

  const User.anonymous() : this();

  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
