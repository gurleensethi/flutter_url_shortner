import 'package:dio/dio.dart';

class UrlShorteningApi {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://cleanuri.com/api/v1'));

  Future shortenUrl(String url) async {
    final formData = FormData()..add('url', url);

    final response = await _dio.post(
      '/shorten',
      data: formData,
    );

    return response.data['result_url'];
  }
}
