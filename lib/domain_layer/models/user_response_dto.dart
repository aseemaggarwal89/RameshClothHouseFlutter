import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response_dto.g.dart';

@JsonSerializable()
class UserResponseDTO extends Equatable {
  final String id;
  final String? token;
  final DateTime? expireTime;

  const UserResponseDTO(this.id, {this.token, this.expireTime});

  @override
  List<Object> get props => [id];

  static const empty = UserResponseDTO('-');

  @override
  factory UserResponseDTO.fromJson(Map<String, dynamic> json) {
    return _$UserResponseDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserResponseDTOToJson(this);
}
