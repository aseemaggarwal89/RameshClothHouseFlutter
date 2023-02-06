import 'package:json_annotation/json_annotation.dart';

part 'login_user_dto.g.dart';

@JsonSerializable()
class LoginUserDTO {
  final String password;
  final String email;

  LoginUserDTO({
    required this.password,
    required this.email,
  });

  factory LoginUserDTO.fromJson(Map<String, dynamic> json) {
    return _$LoginUserDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginUserDTOToJson(this);
}
