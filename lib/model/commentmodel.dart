class CommentModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentModel({this.postId, this.id, this.name, this.email, this.body});

  factory CommentModel.commentModel(Map<String, dynamic> model) {
    return CommentModel(
      postId: model['postId'],
      id: model['id'],
      name: model['name'],
      email: model['email'],
      body: model['body'],
    );
  }
}
