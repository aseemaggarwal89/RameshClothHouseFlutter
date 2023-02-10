import 'dart:async';

import 'package:rameshclothhouse/domain_layer/domain_layer.dart';

abstract class IColorInfoUseCases {
  Future<List<ColorInfo>> fetchAllColorInfoData();
}

class ColorInfoUseCase implements IColorInfoUseCases, CacheInjection {
  final IColorInfoAPIRepository _colorInfoAPIRepository;

  ColorInfoUseCase(
    this._colorInfoAPIRepository,
  );

  @override
  Future<List<ColorInfo>> fetchAllColorInfoData() async {
    final result = await _colorInfoAPIRepository.getColorInfo();

    return result.when(
        success: (success) {
          if (success != null && success.status == "success") {
            return success.data ?? [];
          } else {
            return throw const NetworkExceptions.notFound("Data not available");
          }
        },
        failure: (failure) => throw failure);
  }
}
