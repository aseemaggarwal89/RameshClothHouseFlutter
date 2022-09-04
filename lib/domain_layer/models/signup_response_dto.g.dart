// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseDTO _$SignupResponseDTOFromJson(Map<String, dynamic> json) =>
    SignupResponseDTO(
      token: json['idToken'] as String,
      expiryDate: SignupResponseDTO._fromJson(json['expiresIn'] as String),
      userId: json['localId'] as String,
    );

Map<String, dynamic> _$SignupResponseDTOToJson(SignupResponseDTO instance) =>
    <String, dynamic>{
      'idToken': instance.token,
      'expiresIn': SignupResponseDTO._toJson(instance.expiryDate),
      'localId': instance.userId,
    };
