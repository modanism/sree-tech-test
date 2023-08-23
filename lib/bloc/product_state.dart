import 'package:sree_test/models/product_model.dart';

enum ProductStatus { initial, failure, success }

class ProductState {
  ProductState(
      {this.status = ProductStatus.initial, this.product, this.message = ""});

  ProductStatus? status;
  ProductModel? product;
  String? message;

  ProductState copyWith(
      {ProductStatus? status, ProductModel? product, String? message}) {
    return ProductState(
        status: status ?? this.status,
        product: product ?? this.product,
        message: message ?? this.message);
  }
}
