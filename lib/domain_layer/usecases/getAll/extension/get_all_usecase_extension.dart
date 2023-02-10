import 'package:rameshclothhouse/domain_layer/usecases/getAll/cases/get_all_usecase.dart';

import '../../../domain_layer.dart';

abstract class GetAllUseCaseInjection {}

extension GetAllUseCaseInjectionExtension on GetAllUseCaseInjection {
  IGetAllUseCaseUseCases get getAllDataUseCase {
    return injector<IGetAllUseCaseUseCases>();
  }
}
