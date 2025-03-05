part of 'product_detail_page_bloc.dart';

@freezed
abstract class ProductDetailPageEvent with _$ProductDetailPageEvent {
  const factory ProductDetailPageEvent.getProductDetail(String productId) = GetProductDetailEvent;
  
}
