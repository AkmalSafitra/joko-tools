import 'package:hive/hive.dart';

part 'tool_model.g.dart';

@HiveType(typeId: 0)
class ToolModel {
  @HiveField(0)
  int? toolId;

  @HiveField(1)
  String? toolName;

  @HiveField(2)
  int? toolCount;

  @HiveField(3)
  String? toolImage;

  ToolModel({this.toolId, this.toolName, this.toolCount, this.toolImage});
  factory ToolModel.fromJson(Map<String, dynamic> json) => ToolModel(
        toolId: json["toolId"],
        toolName: json["toolName"],
        toolCount: json["toolCount"],
        toolImage: json["toolImage"],
      );
}
