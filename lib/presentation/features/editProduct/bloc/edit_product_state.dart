part of 'edit_product_bloc.dart';

@freezed
class EditProductState with _$EditProductState {
  const factory EditProductState.initial(
      EditProductInputFields productInputFields) = _Initial;
  const factory EditProductState.validate(bool isValid) = _Validate;
  const factory EditProductState.refresh() = Refresh;
  const factory EditProductState.loading() = EditProductLoading;
}
