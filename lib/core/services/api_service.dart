import 'dart:convert';
import 'dart:io';
import '../_core_exports.dart';

class ApiService {
  static Future<List<ProductModel>> getProducts() async {
    try {
      final url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.productsEndpoint}',
      );
      final request = await HttpClient().getUrl(url);
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();
        final List<dynamic> jsonData = jsonDecode(responseBody);

        return jsonData.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        throw Exception('API Hatası: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Bağlantı Hatası: $e');
    }
  }
}
