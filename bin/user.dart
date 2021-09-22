class User {
  User(this._id, this._name);

  User.anonymous() : this(11, 'anonymous');

  String _name = '';
  int _id = 0;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
