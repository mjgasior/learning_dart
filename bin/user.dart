class User {
  const User({int id = 1, String name = 'anonymous'})
      : assert(id > 0),
        _id = id,
        _name = name;

  factory User.ray() {
    return User(id: 55, name: 'Ray');
  }

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  User.fromJson2(Map<String, Object> json)
      : _id = json['id'] as int,
        _name = json['name'] as String;

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
