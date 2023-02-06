// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserDTO _$LoginUserDTOFromJson(Map<String, dynamic> json) => LoginUserDTO(
      password: json['password'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$LoginUserDTOToJson(LoginUserDTO instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
    };
