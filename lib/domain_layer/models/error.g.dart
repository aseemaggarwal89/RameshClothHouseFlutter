// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      status: json['status'] as String,
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
      message: json['message'] as String,
      stack: json['stack'] as String?,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'stack': instance.stack,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      status: json['status'] as String? ?? '',
      isOperational: json['isOperational'] as bool? ?? false,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'status': instance.status,
      'isOperational': instance.isOperational,
    };
