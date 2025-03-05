import 'package:json_annotation/json_annotation.dart';


part 'get_products_count.g.dart';

@JsonSerializable()
class GetProductCountResponse {
  String status;
  @JsonKey(name: 'data')
  int count;

  GetProductCountResponse(this.count, this.status);

  factory GetProductCountResponse.fromJson(Map<String, dynamic> json) {
    return _$GetProductCountResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProductCountResponseToJson(this);
}
