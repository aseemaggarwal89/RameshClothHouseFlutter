import 'package:json_annotation/json_annotation.dart';

part 'signup_response_dto.g.dart';

@JsonSerializable()
class SignupResponseDTO {
  @JsonKey(name: "idToken")
  final String token;

  @JsonKey(name: "expiresIn", fromJson: _fromJson, toJson: _toJson)
  final DateTime expiryDate;

  @JsonKey(name: "localId")
  final String userId;
  
  static DateTime _fromJson(String date) {
    return DateTime.now().add(
      Duration(
        seconds: int.parse(
          date,
        ),
      ),
    );
  }

  String? get validToken {
    if (expiryDate.isAfter(DateTime.now())) {
      return token;
    }
    return null;
  }

  static String _toJson(DateTime date) {
    final remaingSeconds = date.difference(DateTime.now()).inSeconds;
    return "$remaingSeconds";
  }

  SignupResponseDTO(
      {required this.token, required this.expiryDate, required this.userId});

  factory SignupResponseDTO.fromJson(Map<String, dynamic> json) {
    return _$SignupResponseDTOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupResponseDTOToJson(this);
}
