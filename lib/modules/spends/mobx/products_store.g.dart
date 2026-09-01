// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductsStore on ProductsStoreBase, Store {
  late final _$productAtom = Atom(
    name: 'ProductsStoreBase.product',
    context: context,
  );

  @override
  ProductEntity get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(ProductEntity value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$ProductsStoreBaseActionController = ActionController(
    name: 'ProductsStoreBase',
    context: context,
  );

  @override
  void createProduct(ProductEntity newProduct) {
    final _$actionInfo = _$ProductsStoreBaseActionController.startAction(
      name: 'ProductsStoreBase.createProduct',
    );
    try {
      return super.createProduct(newProduct);
    } finally {
      _$ProductsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
product: ${product}
    ''';
  }
}
