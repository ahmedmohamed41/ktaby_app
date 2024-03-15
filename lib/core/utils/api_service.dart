import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  Dio dio = Dio();
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}
