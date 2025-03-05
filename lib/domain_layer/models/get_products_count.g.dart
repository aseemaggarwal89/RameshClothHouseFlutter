// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductCountResponse _$GetProductCountResponseFromJson(
        Map<String, dynamic> json) =>
    GetProductCountResponse(
      (json['data'] as num).toInt(),
      json['status'] as String,
    );

Map<String, dynamic> _$GetProductCountResponseToJson(
        GetProductCountResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.count,
    };
