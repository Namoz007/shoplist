import '../../../../sources.dart';

part 'home_appliances_model.g.dart';

@HiveType(typeId: 6)
class HomeAppliancesModel extends HomeAppliancesEntities {
  @HiveField(0)
  final String productName;

  @HiveField(1)
  final int count;

  @HiveField(2)
  final listsCategory category;

  HomeAppliancesModel({
    required this.productName,
    required this.count,
    required this.category,
  }) : super(
          productName: productName,
          category: category,
          count: count,
        );

  factory HomeAppliancesModel.fromJson(Map<String, dynamic> json) {
    return HomeAppliancesModel(
      productName: json['productName'],
      count: json['count'],
      category: getCategory(
        json['category'],
      ),
    );
  }
}
