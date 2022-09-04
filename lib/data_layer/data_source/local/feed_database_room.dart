// import 'package:data_layer/objectbox.g.dart';
// import 'package:data_layer/src/data_source/models/feed_db.dart';

// import 'database.dart';

// class FeedDatabaseRoom extends DatabaseRoom<FeedDataDB> {
//   FeedDataDB? queryFeedData(int pageNumber) {
//     Query<FeedDataDB> query =
//         storageBox.query(FeedDataDB_.pageNumber.equals(pageNumber)).build();
//     FeedDataDB? entity = query.findFirst();
//     query.close();
//     return entity;
//   }

//   Future<int> insert(FeedDataDB feedEntity) async {
//     return storageBox.putAsync(feedEntity);
//   }
// }
