import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.g.dart';

enum FilterType { brand, category }

extension FilterTypeExtension on FilterType {
  String get filterName {
    switch (this) {
      case FilterType.brand:
        return 'Brands';
      case FilterType.category:
        return 'Categories';
    }
  }
}

abstract class FilterDTO extends Equatable {
  final String name;
  @JsonKey(name: "_id")
  final String uniqueId;
  final FilterType type;

  const FilterDTO(this.name, this.uniqueId, this.type);

  @override
  List<Object> get props => [uniqueId, name, type];
}

@JsonSerializable()
class BrandDTO extends FilterDTO {
  final bool active;

  const BrandDTO(
    this.active, {
    required String uniqueId,
    required String name,
  }) : super(name, uniqueId, FilterType.brand);

  factory BrandDTO.fromJson(Map<String, dynamic> json) {
    return _$BrandDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandDTOToJson(this);
}
