import '../../../../sources.dart';

part 'electronic_model.g.dart';

@HiveType(typeId: 2)
class ElectronicModel extends Electronic {
  @HiveField(0)
  final String productName;

  @HiveField(1)
  final int count;

  @HiveField(2)
  final listsCategory category;

  ElectronicModel({
    required this.productName,
    required this.count,
    required this.category,
  }) : super(
          productName: productName,
          count: count,
          category: category,
        );

  factory ElectronicModel.fromJson(Map<String, dynamic> json) {
    return ElectronicModel(
      productName: json['productName'],
      count: json['count'],
      category: getCategory(json['category']),
    );
  }
}
