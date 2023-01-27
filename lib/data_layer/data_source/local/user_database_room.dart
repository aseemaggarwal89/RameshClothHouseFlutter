// import 'package:rameshclothhouse/data_layer/data_source/models/user_dto.dart';
// import 'package:rameshclothhouse/objectbox.g.dart';

// class UserDatabaseRoom {
//   final Box<UserEntity> storageBox;

//   UserDatabaseRoom(this.storageBox);

//   Future<UserEntity?> queryUser(String userId) async {
//     Query<UserEntity> query =
//         (storageBox).query(UserEntity_.userId.equals(userId)).build();
//     return query.findFirst();
//   }

//   Future<int> insert(UserEntity person) async {
//     return storageBox.putAsync(person);
//   }
// }
