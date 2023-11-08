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

  @HiveField(3)
  int? toolCount;

  LendModel({this.lendId, this.toolId, this.friendId, this.toolCount});
  factory LendModel.fromJson(Map<String, dynamic> json) => LendModel(
        lendId: json["lendId"],
        toolId: json["toolId"],
        friendId: json["friendId"],
        toolCount: json["toolCount"],
      );
}
