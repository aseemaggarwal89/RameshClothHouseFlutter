import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class ErrorModel {
  String status;
  Error? error;
  String message;
  String? stack;

  ErrorModel({
    required this.status,
    this.error,
    required this.message,
    this.stack,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return _$ErrorModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}

@JsonSerializable()
class Error {
  Error({
    this.statusCode,
    this.status = '',
    this.isOperational = false,
  });

  int? statusCode;
  String? status;
  bool? isOperational;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        statusCode: json["statusCode"],
        status: json["status"],
        isOperational: json["isOperational"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "status": status,
        "isOperational": isOperational,
      };
}
