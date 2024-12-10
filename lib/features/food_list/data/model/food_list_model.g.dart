// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FoodListModelAdapter extends TypeAdapter<FoodListModel> {
  @override
  final int typeId = 1;

  @override
  FoodListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FoodListModel(
      listId: fields[0] as String,
      listTitle: fields[1] as String,
      products: (fields[2] as List).cast<ProductEntities>(),
      category: getCategory(fields[3]),
    );
  }

  @override
  void write(BinaryWriter writer, FoodListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.listId)
      ..writeByte(1)
      ..write(obj.listTitle)
      ..writeByte(2)
      ..write(obj.products)
      ..writeByte(3)
      ..write(obj.category.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
