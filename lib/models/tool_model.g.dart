// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ToolModelAdapter extends TypeAdapter<ToolModel> {
  @override
  final int typeId = 0;

  @override
  ToolModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ToolModel(
      toolId: fields[0] as int?,
      toolName: fields[1] as String?,
      toolCount: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ToolModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.toolId)
      ..writeByte(1)
      ..write(obj.toolName)
      ..writeByte(2)
      ..write(obj.toolCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToolModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
