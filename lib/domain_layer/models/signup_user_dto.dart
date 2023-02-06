import 'package:json_annotation/json_annotation.dart';

part 'signup_user_dto.g.dart';

@JsonSerializable()
class SignupUserDTO {
  final String password;
  final String email;
  final String passwordConfirm;
  final String name;

  SignupUserDTO({
    required this.password,
    required this.email,
    required this.name,
    required this.passwordConfirm,
  });

  factory SignupUserDTO.fromJson(Map<String, dynamic> json) {
    return _$SignupUserDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupUserDTOToJson(this);
}
