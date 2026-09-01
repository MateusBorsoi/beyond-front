import 'package:Beyond/local/injection/models/product_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'products_store.g.dart';

@singleton
class ProductsStore = ProductsStoreBase with _$ProductsStore;

abstract class ProductsStoreBase with Store {
  @observable
  ProductEntity product = ProductEntity.empty();

  @action
  void createProduct(ProductEntity newProduct) {
    product = newProduct;
  }
}
