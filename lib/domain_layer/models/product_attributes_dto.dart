import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attributes_dto.g.dart';

@JsonSerializable()
class ProductAttributes extends Equatable {
  @JsonKey(name: 'Size')
  final String value;
  @JsonKey(ignore: true)
  final bool isAvailable;

  const ProductAttributes(this.value, {this.isAvailable = true});

  @override
  List<Object?> get props => [value, isAvailable];

  factory ProductAttributes.fromJson(Map<String, dynamic> json) {
    return _$ProductAttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductAttributesToJson(this);
}