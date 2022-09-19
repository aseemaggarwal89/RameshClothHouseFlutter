import 'package:json_annotation/json_annotation.dart';

part 'product_param_dto.g.dart';

@JsonSerializable()
class ProductParamDTO {
  @JsonKey(includeIfNull: false)
  final String? subCategoryId;
  @JsonKey(includeIfNull: false)
  final String? brandId;
  @JsonKey(includeIfNull: false)
  final String? fields;
  @JsonKey(name: 'limit', includeIfNull: false)
  final String? pageSize;
  @JsonKey(includeIfNull: false)
  final String? page;

  ProductParamDTO({
    this.subCategoryId,
    this.brandId,
    this.fields,
    this.pageSize,
    this.page,
  });

  factory ProductParamDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductParamDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductParamDTOToJson(this);
}
