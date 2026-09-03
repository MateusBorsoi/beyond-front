import 'package:Beyond/local/entities/product_entity.dart';
import 'package:Beyond/local/entities/rating_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
    required super.category,
    required super.image,
    required super.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"] ?? 0,
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      price: (json["price"] ?? 0).toDouble(),
      category: json["category"] ?? "",
      image: json["image"] ?? "",
      rating: json["rating"] != null
          ? Rating(
              rate: (json["rating"]["rate"] ?? 0).toDouble(),
              count: json["rating"]["count"] ?? 0,
            )
          : Rating.empty(),
    );
  }
}
