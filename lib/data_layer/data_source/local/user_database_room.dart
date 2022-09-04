// import 'package:data_layer/objectbox.g.dart';
// import 'package:data_layer/src/data_source/models/user_entity.dart';

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
