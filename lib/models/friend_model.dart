import 'package:hive/hive.dart';

part 'friend_model.g.dart';

@HiveType(typeId: 1)
class FriendModel {
  @HiveField(0)
  int? friendId;

  @HiveField(1)
  String? friendName;

  FriendModel({this.friendId, this.friendName});
  factory FriendModel.fromJson(Map<String, dynamic> json) => FriendModel(
        friendId: json["friendId"],
        friendName: json["friendName"],
      );
}
