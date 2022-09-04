import 'package:json_annotation/json_annotation.dart';
import 'package:rameshclothhouse/domain_layer/models/order_dto.dart';

part 'get_orders_response.g.dart';

@JsonSerializable()
class GetOrdersResponse {
  @JsonKey(name: 'data')
  Map<String, OrderItemDTO> orders;

  GetOrdersResponse(this.orders);

  factory GetOrdersResponse.fromJson(Map<String, dynamic> json) {
    return _$GetOrdersResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrdersResponseToJson(this);
}
