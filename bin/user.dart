class User {
  const User({int id = 1, String name = 'anonymous'})
      : assert(id > 0),
        _id = id,
        _name = name;

  final String _name;
  final int _id;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
