class CartModel {
  int? id;
  double? total;
  double? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;
  List<ProductModel>? products;

  CartModel({
    this.id,
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
    this.products,
  });

  factory CartModel.mapToModel(Map model) {
    List l1 = model['products'];
    return CartModel(
      id: model['id'],
      products: l1
          .map(
            (e) => ProductModel.mapToModel(e),
          )
          .toList(),
      total: model['total'],
      discountedTotal: model['discountedTotal'],
      userId: model['userId'],
      totalProducts: model['totalProducts'],
      totalQuantity: model['totalQuantity'],
    );
  }
}

class ProductModel {
  int? id;
  String? title;
  double? price;
  int? quantity;
  double? total;
  num? discountPercentage;
  num? discountedTotal;
  String? thumbnail;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedTotal,
    this.thumbnail,
  });

  factory ProductModel.mapToModel(Map model) {
    return ProductModel(
      id: model['id'],
      title: model['title'],
      price: model['price'],
      quantity: model['quantity'],
      total: model['total'],
      discountPercentage: model['discountPercentage'],
      discountedTotal: model['discountedTotal'],
      thumbnail: model['thumbnail'],
    );
  }
}
