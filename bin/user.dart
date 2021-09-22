class User {
  User(this.id, this.name);

  User.anonymous() {
    id = 0;
    name = 'anonymous';
  }

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
