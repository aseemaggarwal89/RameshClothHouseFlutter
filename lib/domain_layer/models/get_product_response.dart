import 'package:json_annotation/json_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/product_dto.dart';

part 'get_product_response.g.dart';

@JsonSerializable()
class GetProductsResponse {
  @JsonKey(name: 'data')
  Map<String, ProductDTO> products;

  GetProductsResponse(this.products);

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductsResponseToJson(this);
}
