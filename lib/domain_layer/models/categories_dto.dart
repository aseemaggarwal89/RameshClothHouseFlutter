import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand_dto.dart';
part 'categories_dto.g.dart';

@JsonSerializable()
@immutable
class CategoriesDTO extends FilterDTO {
  const CategoriesDTO(
    this.active,
    this.subCategories, {
    required String uniqueId,
    required String name,
  }) : super(
          name,
          uniqueId,
          FilterType.category,
        );

  final bool active;
  final List<CategoriesDTO>? subCategories;

  factory CategoriesDTO.fromJson(Map<String, dynamic> json) {
    return _$CategoriesDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoriesDTOToJson(this);
}
