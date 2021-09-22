class User {
  User(this.id, this.name);

  User.anonymous() : this(11, 'anonymous');

  String name = '';
  int id = 0;

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
