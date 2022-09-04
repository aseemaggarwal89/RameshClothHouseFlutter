import 'package:json_annotation/json_annotation.dart';

part 'update_favorite_response.g.dart';

@JsonSerializable()
class ProductFavoriteResponse {
  bool isFavorite;

  ProductFavoriteResponse(this.isFavorite);

  @override
  factory ProductFavoriteResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductFavoriteResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductFavoriteResponseToJson(this);
}
