import 'package:equatable/equatable.dart';
import 'package:flutter_app/local/injection/models/product_entity.dart';

class CartEntity extends Equatable {
  final double quantidade;
  final ProductEntity product;
  final double total;
  final double subtotal;
  final double desconto;
  final double acrescimo;

  const CartEntity({
    required this.product,
    required this.quantidade,
    required this.total,
    required this.subtotal,
    required this.desconto,
    required this.acrescimo,
  });

  factory CartEntity.empty() {
    return CartEntity(
      product: ProductEntity.empty(),
      quantidade: 0.0,
      total: 0.0,
      subtotal: 0.0,
      desconto: 0.0,
      acrescimo: 0.0,
    );
  }

  @override
  List<Object?> get props => [
    product,
    quantidade,
    total,
    subtotal,
    desconto,
    acrescimo,
  ];
}
