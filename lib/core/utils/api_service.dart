import 'package:dio/dio.dart';

import '../../constants.dart';

class ApiService {
  final String baseUrl = kBaseUrl;
  final Dio dio;

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    try {
      final response = await dio.get('$baseUrl$endpoint');
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      throw Exception('Failed to load data: ${e.message}');
    }
  }
}
