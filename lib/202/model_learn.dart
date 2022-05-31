// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostMode2 {
  int userId;
  int id;
  String title;
  String body;

  PostMode2(this.userId, this.id, this.title, this.body);
}

class PostMode3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostMode3(this.userId, this.id, this.title, this.body);
}

class PostMode4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostMode4({required this.userId, required this.id, required this.title, required this.body});
}

class PostMode5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostMode5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
  // {
  //     _userId = userId,
  //   _id = id,
  //   _title = title,
  //   _body = body,
  // }
}

class PostMode6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostMode6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostMode7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostMode7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostMode8 {
  final int? userId;
  final int? id;
  final String? title;
   String? body;

  PostMode8({this.userId, this.id, this.title, this.body});

  void updateBody(String? data){
    if (data != null && data.isNotEmpty){
      body = data;
    }
  }

  PostMode8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostMode8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
