import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sree_test/api/api.dart';

import '../models/product_model.dart';

class ProductCollection {
  Dio dio = Dio();
  Response? response;

  Future<ProductModel> getProductDetail() async {
    try {
      response = await getConnection("https://tradeasia.sg//en/dipentene");
      log(response.toString());
      return ProductModel.fromJson(response!.data);
    } on DioException catch (e) {
      throw e.message!;
    }
  }
}
