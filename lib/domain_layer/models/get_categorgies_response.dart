import 'package:rameshclothhouse/domain_layer/models/categories_dto.dart';

import 'base_response.dart';

class GetCategoriesResponse extends GetBaseResponseDTO<CategoriesDTO> {
  GetCategoriesResponse(results, data, status)
      : super(status: status, results: results, data: data);

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) {
    final data = GetBaseResponseDTO.fromJson(
        json, (json) => CategoriesDTO.fromJson(json as Map<String, dynamic>));

    return GetCategoriesResponse(data.results, data.data, data.status);
  }

  Map<String, dynamic> toJson() {
    return super.toJsonForObject((value) => value.toJson());
  }
}
