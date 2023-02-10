import '../domain_layer.dart';

class GetProductDetailResponse extends GetDetailBaseResponse<ProductDetailDTO> {
  GetProductDetailResponse(data, status) : super(data: data, status: status);

  factory GetProductDetailResponse.fromJson(Map<String, dynamic> json) {
    final data = GetDetailBaseResponse.fromJson(json,
        (json) => ProductDetailDTO.fromJson(json as Map<String, dynamic>));

    return GetProductDetailResponse(data.data, data.status);
  }

  Map<String, dynamic> toJson() {
    return super.toJsonForObject((value) => value.toJson());
  }
}
