part of 'edit_product_bloc.dart';

@freezed
class EditProductEvent with _$EditProductEvent {
  const factory EditProductEvent.started() = _Started;

  const factory EditProductEvent.submittedTapped() = _Submitted;
  const factory EditProductEvent.updateProductDetails(List<ProductDescriptionDetail> productDetails) = _ProductDetailsUpdated;
  const factory EditProductEvent.updateSummary(String description) = _SummaryUpdated;
}
