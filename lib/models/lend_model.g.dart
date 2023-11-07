// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lend_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LendModelAdapter extends TypeAdapter<LendModel> {
  @override
  final int typeId = 2;

  @override
  LendModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LendModel(
      lendId: fields[0] as int?,
      toolId: fields[1] as int?,
      friendId: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, LendModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.lendId)
      ..writeByte(1)
      ..write(obj.toolId)
      ..writeByte(2)
      ..write(obj.friendId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LendModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
