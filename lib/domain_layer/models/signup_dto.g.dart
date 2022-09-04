// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupDTO _$SignupDTOFromJson(Map<String, dynamic> json) => SignupDTO(
      password: json['password'] as String,
      email: json['email'] as String,
      returnSecureToken: json['returnSecureToken'] as bool,
    );

Map<String, dynamic> _$SignupDTOToJson(SignupDTO instance) => <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'returnSecureToken': instance.returnSecureToken,
    };
