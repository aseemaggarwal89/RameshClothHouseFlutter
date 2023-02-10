import '../../../domain_layer.dart';
export '../cases/get_color_info_usecase.dart';

abstract class ColorInfoUseCaseInjection {}

extension ColorInfoUseCaseInjectionExtension on ColorInfoUseCaseInjection {
  IColorInfoUseCases get getColorInfoDataUseCase {
    return injector<IColorInfoUseCases>();
  }
}
