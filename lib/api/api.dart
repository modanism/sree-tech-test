import 'dart:developer';

import 'package:dio/dio.dart';

Dio dio = Dio();
Response? response;

Future<Response> getConnection(String url) async {
  try {
    dio.options.headers['content-Type'] = 'application/json';
    log(url);

    return await dio.get(url);
  } catch (e) {
    log(e.toString());
    rethrow;
  }
}
