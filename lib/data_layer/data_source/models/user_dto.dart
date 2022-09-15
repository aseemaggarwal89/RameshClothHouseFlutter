import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:objectbox/objectbox.dart';

part 'user_dto.g.dart';

@JsonSerializable()
// @Entity()
class UserDTO {
  @JsonKey(ignore: true)
  // @Id()
  int? id;

  @JsonKey(name: "_id")
  // @Unique(onConflict: ConflictStrategy.replace)
  // @Index()
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
}
