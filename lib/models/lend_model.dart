import 'package:hive/hive.dart';

part 'lend_model.g.dart';

@HiveType(typeId: 2)
class LendModel {
  @HiveField(0)
  int? lendId;

  @HiveField(1)
  int? toolId;

  @HiveField(2)
  int? friendId;

  LendModel({this.lendId, this.toolId, this.friendId});
}
