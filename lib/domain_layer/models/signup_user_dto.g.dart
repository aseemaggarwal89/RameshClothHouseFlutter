// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupUserDTO _$SignupUserDTOFromJson(Map<String, dynamic> json) =>
    SignupUserDTO(
      password: json['password'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$SignupUserDTOToJson(SignupUserDTO instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'passwordConfirm': instance.passwordConfirm,
      'name': instance.name,
    };
