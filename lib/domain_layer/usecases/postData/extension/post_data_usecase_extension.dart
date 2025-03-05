
import '../../../domain_layer.dart';
import '../cases/post_data_usecase.dart';

abstract class PostDataUseCaseInjection {}

extension PostDataUseCaseInjectionExtension on PostDataUseCaseInjection {
  IPostDataUseCases get getPostDataUseCase {
    return injector<IPostDataUseCases>();
  }
}
