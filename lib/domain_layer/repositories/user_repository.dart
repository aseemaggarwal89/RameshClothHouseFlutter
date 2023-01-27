import '../models/entities.dart';

abstract class IUserDataDBRepository {
  UserDTO? fetchUser(String userId);
  Future<int> saveUser(UserDTO user);
}
