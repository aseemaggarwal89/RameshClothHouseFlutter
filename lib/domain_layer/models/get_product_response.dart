import 'package:json_annotation/json_annotation.dart';

import '../domain_layer.dart';

part 'get_product_response.g.dart';

@JsonSerializable()
class GetProductsResponse {
  String status;
  int results;
  @JsonKey(name: 'data')
  List<ProductDTO> products;

  GetProductsResponse(this.results, this.products, this.status);

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductsResponseToJson(this);
}
