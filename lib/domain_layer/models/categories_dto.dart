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

  CategoriesDTO? subCategoryFromCategory(String subCategoryId) {
    if (subCategories?.isNotEmpty ?? false) {
      try {
        CategoriesDTO subCategory = subCategories!
            .firstWhere((element) => element.uniqueId == subCategoryId);
        return subCategory;
      } catch (e) {
        return null;
      }
    }

    return null;
  }

  factory CategoriesDTO.fromJson(Map<String, dynamic> json) {
    return _$CategoriesDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoriesDTOToJson(this);
}
