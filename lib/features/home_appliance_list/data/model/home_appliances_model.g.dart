// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_appliances_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeAppliancesModelAdapter extends TypeAdapter<HomeAppliancesModel> {
  @override
  final int typeId = 6;

  @override
  HomeAppliancesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeAppliancesModel(
      productName: fields[0] as String,
      count: fields[1] as int,
      category: fields[2] as listsCategory,
    );
  }

  @override
  void write(BinaryWriter writer, HomeAppliancesModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.productName)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAppliancesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
