// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsResponse _$GetProductsResponseFromJson(Map<String, dynamic> json) =>
    GetProductsResponse(
      (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ProductDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GetProductsResponseToJson(
        GetProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.products,
    };
