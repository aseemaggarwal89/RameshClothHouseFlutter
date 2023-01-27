import 'package:json_annotation/json_annotation.dart';

part 'signup_dto.g.dart';

@JsonSerializable()
class SignupDTO {
  final String password;
  final String email;
  final bool returnSecureToken;

  SignupDTO(
      {required this.password,
      required this.email,
      required this.returnSecureToken});

  factory SignupDTO.fromJson(Map<String, dynamic> json) {
    return _$SignupDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupDTOToJson(this);
}
