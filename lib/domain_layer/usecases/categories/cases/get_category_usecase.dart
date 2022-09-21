import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';

abstract class ICategoryUseCases {
  Future<List<CategoriesDTO>> fetchAllCategories();
}

class CategoriesUseCase implements ICategoryUseCases {
  final ICategoriesAPIRepository _categoriesAPIDataRepository;

  CategoriesUseCase(
    this._categoriesAPIDataRepository,
  );

  @override
  Future<List<CategoriesDTO>> fetchAllCategories() async {
    final result = await _categoriesAPIDataRepository.getCategories();
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.data
                .map((e) => e.subCategories ?? [])
                .expand((i) => i)
                .toList();
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
