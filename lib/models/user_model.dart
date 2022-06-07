class User {
  String? name;
  String? description;
  String? url;

  User({this.name, this.description, this.url});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['url'] = url;
    return data;
  }
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User(name: 'vb', description: '10', url: 'v10.dev'),
      User(name: 'vb2', description: '102', url: 'v10.dev'),
      User(name: 'vb3', description: '103', url: 'v10.dev'),
    ];
  }
}
