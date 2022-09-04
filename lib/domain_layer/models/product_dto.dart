import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDTO {
  late final String title;
  late final String description;
  late final double price;
  late final String imageUrl;
  late final String creatorId;

  ProductDTO({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.creatorId,
  });

  factory ProductDTO.fromJson(Map<String, dynamic> json) {
    return _$ProductDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDTOToJson(this);
}
