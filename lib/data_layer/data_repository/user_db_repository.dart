// import 'package:objectbox/objectbox.dart';
// import 'package:rameshclothhouse/data_layer/data_source/models/user_dto.dart';
// import 'package:rameshclothhouse/objectbox.g.dart';

// import '../../domain_layer/domain_layer.dart';
// import '../data_source/local/database.dart';

// class UserDataDbRepository extends IUserDataDBRepository {
//   final UserDatabaseRoom dataBaseRoom;
//   UserDataDbRepository(this.dataBaseRoom);

//   @override
//   UserDTO? fetchUser(String userId) {
//     return dataBaseRoom.querySingleData(userId);
//   }

//   @override
//   Future<int> saveUser(UserDTO user) {
//     return dataBaseRoom.insert(user);
//   }
// }

// class UserDatabaseRoom extends DatabaseRoom<UserDTO> {
//   UserDTO? querySingleData(String userId) {
//     Query<UserDTO> query =
//         storageBox.query(UserDTO_.uniqueId.equals(userId)).build();
//     UserDTO? product = query.findFirst();
//     query.close();
//     return product;
//   }
// }
