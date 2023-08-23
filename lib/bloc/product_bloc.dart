import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sree_test/api/product_api_collection.dart';
import 'package:sree_test/bloc/product_event.dart';
import 'package:sree_test/bloc/product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductCollection api = ProductCollection();

  ProductBloc() : super(ProductState()) {
    on<GetProductEvent>(getProduct);
  }

  void getProduct(GetProductEvent event, Emitter<ProductState> emit) async {
    try {
      emit(ProductState().copyWith(status: ProductStatus.initial));
      final response = await api.getProductDetail();

      emit(ProductState()
          .copyWith(status: ProductStatus.success, product: response));
    } catch (e) {
      emit(ProductState()
          .copyWith(status: ProductStatus.failure, message: e.toString()));
    }
  }
}
