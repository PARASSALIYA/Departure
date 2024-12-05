class PhotoModel {
  int? albumId, id;
  String? title, url, thumbnailUrl;

  PhotoModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory PhotoModel.mapToModel(Map model) {
    return PhotoModel(
      albumId: model['albumId'],
      id: model['id'],
      title: model['title'],
      url: model['url'],
      thumbnailUrl: model['thumbnailUrl'],
    );
  }
}
