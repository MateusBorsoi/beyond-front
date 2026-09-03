import 'package:Beyond/data/datasources/products_datasource.dart';
import 'package:Beyond/local/injection/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepository {
  Future<Either<Exception, List<ProductModel>>> getProducts();
}

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsDatasource _datasource;
  ProductsRepositoryImpl(this._datasource);

  @override
  Future<Either<Exception, List<ProductModel>>> getProducts() async {
    try {
      final products = await _datasource.getProducts();
      return right(products);
    } catch (e) {
      return left(Exception("Falha ao carregar produtos: $e"));
    }
  }
}
