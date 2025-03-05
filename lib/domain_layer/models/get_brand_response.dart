
import '../domain_layer.dart';

class GetBrandsResponse extends GetBaseResponseDTO<BrandDTO> {
  GetBrandsResponse(results, data, status)
      : super(status: status, results: results, data: data);

  factory GetBrandsResponse.fromJson(Map<String, dynamic> json) {
    final data = GetBaseResponseDTO.fromJson(
        json, (json) => BrandDTO.fromJson(json as Map<String, dynamic>));
    return GetBrandsResponse(data.results, data.data, data.status);
  }

  Map<String, dynamic> toJson() {
    return super.toJsonForObject((value) => value.toJson());
  }
}
