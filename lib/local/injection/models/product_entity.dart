import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String descricao;
  final double preco;
  final String unidade;
  final double quantidade;
  final int codigo;

  const ProductEntity({
    required this.descricao,
    required this.preco,
    required this.unidade,
    required this.quantidade,
    required this.codigo,
  });

  factory ProductEntity.empty() {
    return ProductEntity(
      descricao: "",
      preco: 0.0,
      unidade: "",
      quantidade: 0.0,
      codigo: 0,
    );
  }

  @override
  List<Object?> get props => [descricao, preco, unidade, quantidade, codigo];
}
