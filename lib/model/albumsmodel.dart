class AlbumsModel {
  int? userId;
  int? id;
  String? title;

  AlbumsModel({this.userId, this.id, this.title});

  factory AlbumsModel.mapToModel(Map model) {
    return AlbumsModel(
      userId: model['userId'],
      id: model['id'],
      title: model['title'],
    );
  }
}
