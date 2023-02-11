import 'package:rameshclothhouse/domain_layer/usecases/getAll/cases/get_all_usecase.dart';

import '../../../domain_layer.dart';
import '../cases/post_data_usecase.dart';

abstract class PostDataUseCaseInjection {}

extension PostDataUseCaseInjectionExtension on PostDataUseCaseInjection {
  IPostDataUseCases get getPostDataUseCase {
    return injector<IPostDataUseCases>();
  }
}
