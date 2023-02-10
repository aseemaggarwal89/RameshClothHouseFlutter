import 'package:json_annotation/json_annotation.dart';

import '../domain_layer.dart';

part 'get_colorinfo_response.g.dart';

@JsonSerializable()
class GetColorInfoResponse {
  String status;
  int results;
  @JsonKey(name: 'data')
  List<ColorInfo>? data;

  GetColorInfoResponse(this.results, this.data, this.status);

  factory GetColorInfoResponse.fromJson(Map<String, dynamic> json) {
    return _$GetColorInfoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetColorInfoResponseToJson(this);

}