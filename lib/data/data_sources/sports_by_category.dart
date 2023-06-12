import 'package:dio/dio.dart';

class SportsRemoteDataSource {
  Future<Map<String, dynamic>?> getSportsData({
    required int categoryId,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'https://fuksiarz.pl/rest/market/categories/?categoryId=$categoryId');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'BRAK WYNIKÓW');
    }
  }
}
