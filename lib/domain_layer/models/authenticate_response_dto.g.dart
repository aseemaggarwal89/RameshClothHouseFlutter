// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateResponseDTO _$AuthenticateResponseDTOFromJson(
        Map<String, dynamic> json) =>
    AuthenticateResponseDTO(
      token: json['token'] as String,
      expiryDate: AuthenticateResponseDTO._fromJson(json['expiresIn'] as num),
      user: UserDTO.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$AuthenticateResponseDTOToJson(
        AuthenticateResponseDTO instance) =>
    <String, dynamic>{
      'token': instance.token,
      'status': instance.status,
      'data': instance.user,
      'expiresIn': AuthenticateResponseDTO._toJson(instance.expiryDate),
    };
