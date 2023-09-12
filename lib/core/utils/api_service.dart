import 'package:dio/dio.dart';

class ApiService {
  final _balseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get('$_balseUrl$endPoints');

    return response.data;
  }
}
