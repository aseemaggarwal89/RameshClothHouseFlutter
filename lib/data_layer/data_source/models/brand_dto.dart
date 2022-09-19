import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.g.dart';

@JsonSerializable()
class BrandDTO {
  final bool active;
  @JsonKey(name: "_id")
  final String uniqueId;
  final String name;

  BrandDTO(this.active, this.name, this.uniqueId);

  factory BrandDTO.fromJson(Map<String, dynamic> json) {
    return _$BrandDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandDTOToJson(this);
}
