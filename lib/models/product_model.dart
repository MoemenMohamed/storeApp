class ProductModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel rate;

  ProductModel._internal(
      {required this.rate,
      required this.category,
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image});
  factory ProductModel.fromJson(json) {
    return ProductModel._internal(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rate:  RatingModel.fromJson(json["rating"]));
  }
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel._internal({required this.rate, required this.count});
  factory RatingModel.fromJson(json) {
    return RatingModel._internal(count: json["count"], rate: json["rate"]);
  }
}
