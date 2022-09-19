import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

@JsonSerializable()
class ResponseData {
  String status;
  num results;
  dynamic data;

  ResponseData(this.results, this.data, this.status);

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return _$ResponseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
