import 'package:json_annotation/json_annotation.dart';
// import 'package:objectbox/objectbox.dart';

part 'product_dto.g.dart';

@JsonSerializable()
// @Entity()
class ProductDTO {

  @JsonKey(name: "_id")
  // @Unique(onConflict: ConflictStrategy.replace)
  // @Index()
  final String uniqueId;
  final num? ratingsAverage;
  final num? ratingsQuantity;
  final num? discountPrice;
  final List<String>? images;
  final String createdAt;
  final List<String>? purchaseByCustomerDates;
  final String? qualityType;
  final String name;
  final num price;
  final String summary;
  final String description;
  final String? imageCover;
  final String? categoryId;
  final String? brandId;
  final String? subCategoryId;
  final String? slug;
  final String? discountPercent;
  final bool isStockAvailable;

  ProductDTO({
    required this.name,
    required this.description,
    required this.price,
    required this.summary,
    required this.uniqueId,
    required this.createdAt,
    this.ratingsAverage,
    this.ratingsQuantity,
    this.discountPrice,
    this.images,
    this.purchaseByCustomerDates,
    this.qualityType,
    this.imageCover,
    this.categoryId,
    this.brandId,
    this.subCategoryId,
    this.slug,
    this.discountPercent,
    this.isStockAvailable = false,
  });

  factory ProductDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDTOToJson(this);
}
