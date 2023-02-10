// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_colorinfo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetColorInfoResponse _$GetColorInfoResponseFromJson(
        Map<String, dynamic> json) =>
    GetColorInfoResponse(
      json['results'] as int,
      (json['data'] as List<dynamic>?)
          ?.map((e) => ColorInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
    );

Map<String, dynamic> _$GetColorInfoResponseToJson(
        GetColorInfoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
      'data': instance.data,
    };
