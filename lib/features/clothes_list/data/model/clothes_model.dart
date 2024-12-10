import '../../../../sources.dart';

part 'clothes_model.g.dart'; // Hive generator uchun qo'shimcha (flutter packages pub run build_runner build)

@HiveType(typeId: 4) // typeId noyob bo'lishi kerak
class ClothesModel extends ClothesEntities {
  @HiveField(0)
  final String productName;

  @HiveField(1)
  final int count;

  @HiveField(2)
  final listsCategory category;

  ClothesModel({
    required this.productName,
    required this.count,
    required this.category,
  }) : super(
          productName: productName,
          count: count,
          category: category,
        );

  factory ClothesModel.fromJson(Map<String, dynamic> json) {
    return ClothesModel(
      productName: json['productName'],
      count: json['count'],
      category: getCategory(json['category']),
    );
  }
}
