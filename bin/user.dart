class User {
  User({int id = 0, String name = 'anonymous'})
      : _id = id,
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
