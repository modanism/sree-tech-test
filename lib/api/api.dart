import 'package:dio/dio.dart';

Dio dio = Dio();
Response? response;

Future<Response> getConnection(String url) async {
  try {
    dio.options.headers['content-Type'] = 'application/json';
    return await dio.get(url);
  } on DioException catch (e) {
    throw e.message!;
  }
}
