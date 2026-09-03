import 'package:Beyond/local/injection/models/product_model.dart';
import 'package:dartz/dartz.dart';
import 'package:Beyond/data/repositories/products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ProductUseCase {
  final ProductsRepository _productRepo;

  ProductUseCase(this._productRepo);

  Future<Either<Exception, List<ProductModel>>> getProducts() async {
    return await _productRepo.getProducts();
  }
}
