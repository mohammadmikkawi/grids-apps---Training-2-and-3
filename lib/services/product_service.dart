import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  static const String baseUrl = 'https://dummyjson.com';

  Future<List<Product>> fetchProducts() async {
    final url = Uri.parse('$baseUrl/products');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> productsJson = data['products'];

      return productsJson
          .map((item) => Product.fromJson(item))
          .toList();
    } else {
      throw Exception('Server Error: ${response.statusCode}');
    }
  }
}