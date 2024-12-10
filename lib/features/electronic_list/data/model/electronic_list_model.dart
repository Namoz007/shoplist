import '../../../../sources.dart';

part 'electronic_list_model.g.dart';

@HiveType(typeId: 3)
class ElectronicListModel extends FoodList with HiveObjectMixin {
  @HiveField(0)
  final String listId;

  @HiveField(1)
  final String listTitle;

  @HiveField(2)
  final List<ProductEntities> products;

  @HiveField(3)
  final listsCategory category;

  ElectronicListModel({
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
}
