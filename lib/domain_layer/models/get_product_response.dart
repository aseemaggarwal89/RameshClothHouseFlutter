
import '../domain_layer.dart';

// part 'get_product_response.g.dart';

// @JsonSerializable()
// class GetProductsResponse {
//   String status;
//   int results;
//   @JsonKey(name: 'data')
//   List<ProductDTO> products;

//   GetProductsResponse(this.results, this.products, this.status);

//   factory GetProductsResponse.fromJson(Map<String, dynamic> json) {
//     return _$GetProductsResponseFromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$GetProductsResponseToJson(this);
// }

class GetProductsResponse extends GetBaseResponseDTO<ProductDTO> {
  GetProductsResponse(results, data, status)
      : super(status: status, results: results, data: data);

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) {
    final data = GetBaseResponseDTO.fromJson(
        json, (json) => ProductDTO.fromJson(json as Map<String, dynamic>));
    return GetProductsResponse(data.results, data.data, data.status);
  }

  Map<String, dynamic> toJson() {
    return super.toJsonForObject((value) => value.toJson());
  }
}
