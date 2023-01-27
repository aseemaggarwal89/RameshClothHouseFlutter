part of 'product_detail_page_bloc.dart';

@freezed
class ProductDetailPageState with _$ProductDetailPageState {
  const factory ProductDetailPageState.initial() = Initial;
  const factory ProductDetailPageState.loaded(ProductDetailDTO product) =
      Loaded;
  const factory ProductDetailPageState.loading() =
      Loading;
  const factory ProductDetailPageState.error(
      dynamic error, String errorMessage) = LoadedError;
}
