part of 'products_cubit.dart';

abstract class ProductCubitState extends Equatable {
  const ProductCubitState();

  @override
  List<Object?> get props => [];
}

class ProductStateLoading extends ProductCubitState {
  const ProductStateLoading();
}

class ProductStateLoadingCartDetails extends ProductCubitState {
  const ProductStateLoadingCartDetails();
}

class ProductStateLoaded extends ProductCubitState {
  final bool isSearching;
  final List<ProductEntity> products;
  const ProductStateLoaded({
    this.products = const [],
    this.isSearching = false,
  });

  ProductStateLoaded copyWith({
    List<ProductEntity>? products,
    bool? isSearching,
  }) {
    return ProductStateLoaded(
      products: products ?? this.products,
      isSearching: isSearching ?? this.isSearching,
    );
  }

  @override
  List<Object?> get props => [products, isSearching];
}
