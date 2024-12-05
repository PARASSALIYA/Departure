class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.mapToModel(Map<String, dynamic> model) {
    return PostModel(
      userId: model['userId'],
      id: model['id'],
      title: model['title'],
      body: model['body'],
    );
  }
}
