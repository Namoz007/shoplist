// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_appliances_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeAppliancesListModelAdapter
    extends TypeAdapter<HomeAppliancesListModel> {
  @override
  final int typeId = 7;

  @override
  HomeAppliancesListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeAppliancesListModel(
      listId: fields[0] as String,
      listTitle: fields[1] as String,
      category: getCategory(fields[2]),
      products: (fields[3] as List).cast<ProductEntities>(),
    );
  }

  @override
  void write(BinaryWriter writer, HomeAppliancesListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.listId)
      ..writeByte(1)
      ..write(obj.listTitle)
      ..writeByte(2)
      ..write(obj.category.name)
      ..writeByte(3)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAppliancesListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
