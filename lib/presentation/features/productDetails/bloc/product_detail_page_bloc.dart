// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain_layer/domain_layer.dart';

part 'product_detail_page_event.dart';
part 'product_detail_page_state.dart';
part 'product_detail_page_bloc.freezed.dart';

class ProductDetailPageBloc
    extends Bloc<ProductDetailPageEvent, ProductDetailPageState>
    implements ProductUseCaseInjection {
  ProductDetailPageBloc() : super(const ProductDetailPageState.initial()) {
    on<ProductDetailPageEvent>((event, emit) {});
    on<GetProductDetailEvent>(_onGetProductDetailEvent);
  }

  void _onGetProductDetailEvent(
      GetProductDetailEvent event, Emitter<ProductDetailPageState> emit) async {
    emit(const ProductDetailPageState.loading());
    try {
      final productDetail =
          await getProductDataUseCase.fetchProductDetailData(event.productId);
      emit(ProductDetailPageState.loaded(productDetail));
    } on NetworkExceptions catch (failure) {
      emit(ProductDetailPageState.error(
          failure, NetworkExceptions.getErrorMessage(failure)));
    } on Exception catch (failure) {
      emit(ProductDetailPageState.error(failure, failure.toString()));
    }
  }

  void dispose() {}
}
