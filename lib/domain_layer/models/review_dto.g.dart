// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReviewDTO _$ProductReviewDTOFromJson(Map<String, dynamic> json) =>
    ProductReviewDTO(
      active: json['active'] as bool? ?? false,
      uniqueId: json['_id'] as String,
      review: json['review'] as String? ?? '',
      rating: (json['rating'] as num?)?.toInt(),
      product: json['product'] as String,
      user: json['user'] == null
          ? null
          : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ProductReviewDTOToJson(ProductReviewDTO instance) =>
    <String, dynamic>{
      'active': instance.active,
      '_id': instance.uniqueId,
      'review': instance.review,
      'rating': instance.rating,
      'product': instance.product,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
    };
