import 'dart:convert';
import 'package:http/http.dart' as http;
import '../errors/app_exception.dart';

class ApiClient {
  static const String baseUrl = 'https://dummyjson.com';

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('\$baseUrl\$endpoint')).timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          throw ApiException('انتهى وقت الاتصال. يرجى المحاولة لاحقاً.');
        },
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        return jsonDecode(response.body);
      } else {
        throw ApiException('خطأ في الخادم: \${response.statusCode}');
      }
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('تعذر الاتصال. تحقق من اتصال الإنترنت.');
    }
  }
}
