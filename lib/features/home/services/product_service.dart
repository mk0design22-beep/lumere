import 'package:lumere_abaya/core/network/api_client.dart';
import 'package:lumere_abaya/features/home/models/product.dart';

class ProductService {
  final ApiClient _apiClient = ApiClient();

  Future<List<Product>> getProducts() async {
    final response = await _apiClient.get('/products');
    final List<dynamic> productsJson = response['products'];
    return productsJson.map((json) => Product.fromJson(json)).toList();
  }

  Future<List<Product>> searchProducts(String query) async {
    final response = await _apiClient.get('/products/search?q=\$query');
    final List<dynamic> productsJson = response['products'];
    return productsJson.map((json) => Product.fromJson(json)).toList();
  }
}
