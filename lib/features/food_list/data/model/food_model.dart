import '../../../../sources.dart';

part 'food_model.g.dart';

@HiveType(typeId: 0)
class FoodModel extends Food {
  @HiveField(0)
  final String productName;

  @HiveField(1)
  final int count;

  @HiveField(2)
  final listsCategory category;

  FoodModel({
    required this.productName,
    required this.count,
    required this.category,
  }) : super(
    productName: productName,
    count: count,
    category: category,
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      "productName": productName,
      "count": count,
      "category": category.name,
    };
  }

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      productName: json['productName'],
      count: json['count'],
      category: getCategory(json['category']),
    );
  }
}
