import 'package:json_annotation/json_annotation.dart';

part 'add_product_response.g.dart';

@JsonSerializable()
class AddResponse {
  String name;

  AddResponse(this.name);

  factory AddResponse.fromJson(Map<String, dynamic> json) {
    return _$AddResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddResponseToJson(this);
}
