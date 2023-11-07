// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FriendModelAdapter extends TypeAdapter<FriendModel> {
  @override
  final int typeId = 1;

  @override
  FriendModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FriendModel(
      friendId: fields[0] as int?,
      friendName: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FriendModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.friendId)
      ..writeByte(1)
      ..write(obj.friendName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FriendModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
