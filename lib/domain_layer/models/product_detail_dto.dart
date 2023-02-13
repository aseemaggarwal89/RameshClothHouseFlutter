// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/brand_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/categories_dto.dart';
import 'package:rameshclothhouse/domain_layer/models/review_dto.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:enum_to_string/enum_to_string.dart';

part 'product_detail_dto.g.dart';

enum QuantityType { unstiched, stiched }

enum QualityType { standard, medium, expensive }

enum QuantityUnitType { meter, unit }

@JsonSerializable()
class ProductDetailDTO {
  ProductDetailDTO({
    required this.name,
    required this.price,
    required this.summary,
    required this.uniqueId,
    required this.createdAt,
    this.ratingsAverage,
    this.ratingsQuantity,
    this.discountPrice,
    this.images,
    required this.qualityType,
    this.isStockAvailable = true,
    this.imageCover,
    this.categoryId,
    this.brandId,
    this.subCategoryId,
    this.slug,
    this.discountPercent,
    this.reviews,
    required this.quantityType,
    this.batches,
    required this.maxQuantityAllowed,
    this.productDetails,
    required this.quantityUnitType,
  });

  @JsonKey(name: "_id")
  final String uniqueId;
  final num? ratingsAverage;
  final num? ratingsQuantity;
  final num? discountPrice;
  final List<String>? images;
  final String createdAt;
  final String qualityType;
  final String quantityType;
  final String name;
  final num price;
  final String summary;
  final String? imageCover;
  final String? subCategoryId;
  final String? slug;
  final String? discountPercent;
  final bool isStockAvailable;
  final CategoriesDTO? categoryId;
  final BrandDTO? brandId;
  List<ProductReviewDTO>? reviews;
  Attributes? sizAttributesId;
  List<String>? sizeNotAllowed;
  final num maxQuantityAllowed;
  List<ProductDescriptionDetail>? productDetails;
  final String quantityUnitType;

  @JsonKey(name: "batch")
  List<ProductBatch>? batches;

  factory ProductDetailDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailDTOToJson(this);

  QuantityType get productQuantityType {
    QuantityType? type =
        EnumToString.fromString(QuantityType.values, quantityType);
    return type ?? QuantityType.unstiched;
  }

  QualityType get productQualityType {
    QualityType? type =
        EnumToString.fromString(QualityType.values, qualityType);
    return type ?? QualityType.standard;
  }

  String productDetailName() {
    String productName = name;
    String? subCategory =
        categoryId?.subCategoryFromCategory(subCategoryId ?? "")?.name;

    String brand = brandId != null ? "| ${brandId!.name}" : "";

    return "$productName ${subCategory != null ? "| $subCategory" : ""} $brand";
  }

  String productCurrentPrice() {
    if (discountPrice != null && discountPrice! > 0) {
      return formatAmountWithSymbol(discountPrice);
    } else {
      return formatAmountWithSymbol(price);
    }
  }

  List<ProductDescriptionDetail> productDetailInfo() {
    productDetails?.sort(((a, b) => a.order.compareTo(b.order)));
    return productDetails ?? [];
  }
}

@JsonSerializable()
class Attributes extends Equatable {
  const Attributes(
    this.sizes,
    this.name,
    this.unit,
    this.uniqueId,
  );

  @JsonKey(name: 'sizes')
  final List<SizeInfo>? sizes;
  final String name;
  final String unit;
  @JsonKey(name: "_id")
  final String uniqueId;

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [uniqueId];
}

@JsonSerializable()
class ProductBatch extends Equatable {
  const ProductBatch(
    this.color,
    this.product,
    this.purchaseByCustomerDates,
    this.images,
    this.isAvailable,
    this.maxQuantityAllowed,
    this.uniqueId,
    this.sizesNotAvailable,
  );

  @JsonKey(name: "_id")
  final String uniqueId;
  final int maxQuantityAllowed;
  final bool isAvailable;
  final List<String>? images;
  final List<DateTime>? purchaseByCustomerDates;
  final String product;
  final ColorInfo? color;
  final List<String>? sizesNotAvailable;

  factory ProductBatch.fromJson(Map<String, dynamic> json) {
    return _$ProductBatchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductBatchToJson(this);

  @override
  List<Object?> get props => [uniqueId];
}

@JsonSerializable()
class ColorInfo extends Equatable {
  final String name;
  final String colorCode;
  @JsonKey(name: "_id")
  final String uniqueId;

  const ColorInfo(
    this.name,
    this.colorCode,
    this.uniqueId,
  );

  @override
  List<Object?> get props => [uniqueId];

  factory ColorInfo.fromJson(Map<String, dynamic> json) {
    return _$ColorInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ColorInfoToJson(this);
}

@JsonSerializable()
class SizeInfo extends Equatable {
  final String display;
  final num value;
  @JsonKey(name: "_id")
  final String uniqueId;

  const SizeInfo(
    this.display,
    this.value,
    this.uniqueId,
  );

  @override
  List<Object?> get props => [uniqueId];

  factory SizeInfo.fromJson(Map<String, dynamic> json) {
    return _$SizeInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SizeInfoToJson(this);
}

@JsonSerializable()
class ProductDescriptionDetail extends Equatable {
  final String display;
  final num order;
  final String value;
  @JsonKey(name: "_id")
  final String? uniqueId;

  const ProductDescriptionDetail(
    this.display,
    this.value,
    this.order, {
    this.uniqueId,
  });

  @override
  List<Object?> get props => [uniqueId];

  factory ProductDescriptionDetail.fromJson(Map<String, dynamic> json) {
    return _$ProductDescriptionDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDescriptionDetailToJson(this);
}
