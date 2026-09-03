import 'package:Beyond/data/useCases/products_use_case.dart';
import 'package:Beyond/local/entities/product_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'products_state.dart';

@injectable
class ProductCubit extends Cubit<ProductCubitState> {
  final ProductUseCase _productUseCase;
  ProductCubit(this._productUseCase) : super(const ProductStateLoading()) {
    _getProducts();
  }

  final searchController = TextEditingController();

  void updIsSearching(bool value) {
    if (!value) {
      searchController.clear();
    }

    if (state is ProductStateLoaded) {
      final currentState = state as ProductStateLoaded;
      if (currentState.isSearching && searchController.text.trim().isEmpty) {
        emit(ProductStateLoading());
        _getProducts();
        return;
      }

      return emit(currentState.copyWith(isSearching: value));
    }
  }

  Future<void> _getProducts() async {
    final currentState = state;
    final response = await _productUseCase.getProducts();

    response.fold(
      (failure) => emit(const ProductStateLoaded()),
      (products) {
        if (currentState is ProductStateLoaded) {
          return emit(currentState.copyWith(products: products));
        }
        emit(ProductStateLoaded(products: products));
      },
    );
  }
}
