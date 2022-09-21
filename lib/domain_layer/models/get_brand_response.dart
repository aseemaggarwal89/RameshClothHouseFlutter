import 'package:json_annotation/json_annotation.dart';

import '../domain_layer.dart';

part 'get_brand_response.g.dart';

@JsonSerializable()
class GetBrandsResponse {
  String status;
  int results;
  @JsonKey(name: 'data')
  List<BrandDTO> data;

  GetBrandsResponse(this.results, this.data, this.status);

  factory GetBrandsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetBrandsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBrandsResponseToJson(this);
}
