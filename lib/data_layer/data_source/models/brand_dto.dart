import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.g.dart';

@JsonSerializable()
class BrandDTO extends Equatable {
  final bool active;
  @JsonKey(name: "_id")
  final String uniqueId;
  final String name;

  BrandDTO(this.active, this.name, this.uniqueId);

  factory BrandDTO.fromJson(Map<String, dynamic> json) {
    return _$BrandDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandDTOToJson(this);

  @override
  List<Object> get props => [uniqueId];
}
