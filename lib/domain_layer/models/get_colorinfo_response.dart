import '../domain_layer.dart';

class GetColorInfoResponse extends GetBaseResponseDTO<ColorInfo> {
  GetColorInfoResponse(results, data, status)
      : super(status: status, results: results, data: data);

  factory GetColorInfoResponse.fromJson(Map<String, dynamic> json) {
    final data = GetBaseResponseDTO.fromJson(
        json, (json) => ColorInfo.fromJson(json as Map<String, dynamic>));

    return GetColorInfoResponse(data.results, data.data, data.status);
  }

  Map<String, dynamic> toJson() {
    return super.toJsonForObject((value) => value.toJson());
  }
}
