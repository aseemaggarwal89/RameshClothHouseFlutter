abstract class UseCase<T, R> {
  const UseCase();
  Future<T> call({R? request});
}
