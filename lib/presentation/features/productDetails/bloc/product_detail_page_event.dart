part of 'product_detail_page_bloc.dart';

@freezed
class ProductDetailPageEvent with _$ProductDetailPageEvent {
  const factory ProductDetailPageEvent.getProductDetail(String productId) = GetProductDetailEvent;
}
