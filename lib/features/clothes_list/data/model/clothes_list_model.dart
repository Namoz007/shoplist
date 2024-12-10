import '../../../../sources.dart';

part 'clothes_list_model.g.dart';

@HiveType(typeId: 5)
class ClothesListModel extends ClothesListEntities {
  @HiveField(0)
  final String listId;

  @HiveField(1)
  final String listTitle;

  @HiveField(2)
  final List<ProductEntities> products;

  @HiveField(3)
  final listsCategory category;

  ClothesListModel({
    required this.listId,
    required this.listTitle,
    required this.products,
    required this.category,
  }) : super(
          listId: listId,
          listTitle: listTitle,
          products: products,
          category: category,
        );

  factory ClothesListModel.fromJson(Map<String, dynamic> json) {
    return ClothesListModel(
      listId: json['listId'],
      listTitle: json['listTitle'],
      products: json['products'],
      category: getCategory(json['category']),
    );
  }
}
