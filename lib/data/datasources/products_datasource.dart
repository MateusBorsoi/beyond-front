import 'package:Beyond/local/injection/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsDatasource {
  Future<List<ProductModel>> getProducts();
}

@Injectable(as: ProductsDatasource)
class ProductsDatasourceImpl implements ProductsDatasource {
  final Dio _baseUrl;
  ProductsDatasourceImpl(@Named("baseUrl") this._baseUrl);

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await _baseUrl.get("/products");
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception("Falha ao carregar produtos");
    }
  }
}
