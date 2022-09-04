// import 'dart:convert';

// import 'package:data_layer/objectbox.g.dart';
// import 'package:data_layer/src/data_source/local/database.dart';
// import 'package:data_layer/src/data_source/models/local_notification_entity.dart';
// import 'package:domain_layer/domain_layer.dart';

// class LocalNotificationDataBaseRoom
//     extends DatabaseRoom<LocalNotificationEntity> {
//   LocalNotificationEntity? getDailyTipData(
//       String category, String type, DateTime timestamp) {
//     Query<LocalNotificationEntity> query = storageBox
//         .query(LocalNotificationEntity_.category.equals(category).and(
//             LocalNotificationEntity_.type.equals(type).and(
//                 LocalNotificationEntity_.tipDayTime
//                     .equals(timestamp.millisecondsSinceEpoch))))
//         .build();
//     LocalNotificationEntity? entity = query.findFirst();
//     query.close();

//     return entity;
//   }

//   LocalNotificationEntity? getCurrentWeekTipData(
//       String category, String type, DateTime startTime, DateTime endTime) {
//     Query<LocalNotificationEntity> query = storageBox
//         .query(LocalNotificationEntity_.category.equals(category).and(
//             LocalNotificationEntity_.type.equals(type).and(
//                 LocalNotificationEntity_.tipDayTime.between(
//                     startTime.millisecondsSinceEpoch,
//                     endTime.millisecondsSinceEpoch))))
//         .build();
//     LocalNotificationEntity? entity = query.findFirst();
//     query.close();

//     return entity;
//   }

//   Future<List<int>> insertAll(List<LocalNotificationEntity> entity) async {
//     return storageBox.putMany(entity);
//   }

//   List<LocalNotificationEntity> getAllTipData(String type) {
//     Query<LocalNotificationEntity> query =
//         storageBox.query(LocalNotificationEntity_.type.equals(type)).build();
//     return query.find();
//   }
// }
