import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/categories_dto.dart';

part 'get_categorgies_response.g.dart';

@JsonSerializable()
class GetCategoriesResponse {
  String status;
  int results;
  @JsonKey(name: 'data')
  List<CategoriesDTO> data;

  GetCategoriesResponse(this.results, this.data, this.status);

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) {
    return _$GetCategoriesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCategoriesResponseToJson(this);
}
