// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO(
      uniqueId: json['_id'] as String,
      token: json['token'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String?,
      role: json['role'] as String? ?? "user",
    );

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
      '_id': instance.uniqueId,
      'token': instance.token,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'role': instance.role,
    };
