import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';

abstract class IBrandUseCases {
  Future<List<BrandDTO>> fetchAllBrandData();
}

class BrandsUseCase implements IBrandUseCases {
  final IBrandAPIRepository _brandAPIDataRepository;

  BrandsUseCase(
    this._brandAPIDataRepository,
  );

  @override
  Future<List<BrandDTO>> fetchAllBrandData() async {
    final result = await _brandAPIDataRepository.getBrands();
    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            if (success.results > 0) {}

            return success.data;
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
