import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_layer.dart';
part 'review_dto.g.dart';

@JsonSerializable()
class ProductReviewDTO {
  ProductReviewDTO({
    this.active = false,
    required this.uniqueId,
    this.review = '',
    this.rating,
    required this.product,
    required this.user,
    required this.createdAt,
  });

  final bool active;
  @JsonKey(name: "_id")
  final String uniqueId;
  final String review;
  final int? rating;
  final String product;
  final UserDTO? user;
  final DateTime createdAt;

  factory ProductReviewDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductReviewDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductReviewDTOToJson(this);
}
