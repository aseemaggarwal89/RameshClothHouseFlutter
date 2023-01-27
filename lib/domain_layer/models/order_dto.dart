import 'package:json_annotation/json_annotation.dart';

import 'cart_item.dart';

part 'order_dto.g.dart';

@JsonSerializable()
class OrderItemDTO {
  final double amount;
  final List<CartItem> products;
  final String dateTime;

  OrderItemDTO(
      {required this.amount, required this.products, required this.dateTime});

  factory OrderItemDTO.fromJson(Map<String, dynamic> json) {
    return _$OrderItemDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderItemDTOToJson(this);
}
