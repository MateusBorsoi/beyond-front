import 'package:Beyond/local/entities/rating_entity.dart';
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String title, description, category, image;
  final double price;
  final Rating rating;

  const ProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductEntity.empty() {
    return ProductEntity(
      id: 0,
      title: "",
      price: 0.0,
      description: "",
      category: "",
      image: "",
      rating: Rating.empty(),
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    price,
    description,
    category,
    image,
    rating,
  ];
}
