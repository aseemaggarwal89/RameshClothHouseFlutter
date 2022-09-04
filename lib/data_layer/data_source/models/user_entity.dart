import 'package:objectbox/objectbox.dart';

@Entity()
class UserEntity {
  int? id;
  @Unique()
  String? userId;
  String? token;
  @Property(type: PropertyType.date)
  DateTime? expireTime;
  String? name;

  UserEntity({this.id, this.userId, this.token, this.expireTime, this.name});
}
