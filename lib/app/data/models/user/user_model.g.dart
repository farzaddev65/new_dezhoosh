// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDtoAdapter extends TypeAdapter<UserDto> {
  @override
  final int typeId = 101;

  @override
  UserDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDto(
      id: fields[0] as int?,
      fullName: fields[1] as String?,
      gender: fields[2] as num?,
      levelId: fields[3] as int?,
      majorId: fields[4] as int?,
      mobile: fields[5] as String?,
      avatar: fields[6] as String?,
      type: fields[7] as String?,
      isConfirm: fields[8] as num?,
      expireDays: fields[9] as num?,
      rate: fields[10] as num?,
      status: fields[11] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, UserDto obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.levelId)
      ..writeByte(4)
      ..write(obj.majorId)
      ..writeByte(5)
      ..write(obj.mobile)
      ..writeByte(6)
      ..write(obj.avatar)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.isConfirm)
      ..writeByte(9)
      ..write(obj.expireDays)
      ..writeByte(10)
      ..write(obj.rate)
      ..writeByte(11)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
