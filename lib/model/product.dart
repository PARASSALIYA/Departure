class Product2Model {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  RatingModel? rating;

  Product2Model(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  factory Product2Model.mapToModel(Map model) {
    return Product2Model(
      id: model['id'],
      title: model['title'],
      price: model['price'],
      description: model['description'],
      category: model['category'],
      image: model['image'],
      rating: RatingModel.mapToModel(model['rating']),
    );
  }
}

class RatingModel {
  num? rate;
  int? count;

  RatingModel({this.rate, this.count});

  factory RatingModel.mapToModel(Map model) {
    return RatingModel(
      rate: model['rate'],
      count: model['count'],
    );
  }
}
