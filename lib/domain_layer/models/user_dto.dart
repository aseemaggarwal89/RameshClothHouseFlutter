import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:objectbox/objectbox.dart';

part 'user_dto.g.dart';

@JsonSerializable()
// @Entity()
class UserDTO {
  @JsonKey(name: "_id")
  final String uniqueId;

  String? token;
  final String name;
  final String email;
  String? photo;
  final String role;

  UserDTO({
    required this.uniqueId,
    this.token,
    required this.name,
    required this.email,
    this.photo,
    this.role = "user",
  });

  static final empty = UserDTO(
    uniqueId: "-",
    name: "-",
    email: "-",
    role: "-",
  );

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return _$UserDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
