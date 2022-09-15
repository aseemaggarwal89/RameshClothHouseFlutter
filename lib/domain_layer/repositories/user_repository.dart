import '../../data_layer/data_layer.dart';

abstract class IUserDataDBRepository {
  UserDTO? fetchUser(String userId);
  Future<int> saveUser(UserDTO user);
}
