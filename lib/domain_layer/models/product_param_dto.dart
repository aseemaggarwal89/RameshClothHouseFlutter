import 'package:json_annotation/json_annotation.dart';

part 'product_param_dto.g.dart';

@JsonSerializable()
class ProductParamDTO {
  final String? subCategoryId;
  final String? brandId;
  final String? fields;
  final String? limit;

  ProductParamDTO({
    this.subCategoryId,
    this.brandId,
    this.fields,
    this.limit,
  });

  factory ProductParamDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductParamDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductParamDTOToJson(this);
}
