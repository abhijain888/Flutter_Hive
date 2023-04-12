// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tecorb.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TecorbAdapter extends TypeAdapter<Tecorb> {
  @override
  final int typeId = 1;

  @override
  Tecorb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tecorb(
      name: fields[0] as String,
      tech: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Tecorb obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.tech);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TecorbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
