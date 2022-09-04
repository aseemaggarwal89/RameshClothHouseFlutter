// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersResponse _$GetOrdersResponseFromJson(Map<String, dynamic> json) =>
    GetOrdersResponse(
      (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, OrderItemDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GetOrdersResponseToJson(GetOrdersResponse instance) =>
    <String, dynamic>{
      'data': instance.orders,
    };
