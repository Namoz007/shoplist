
import '../../../../sources.dart';

part 'home_appliances_list_model.g.dart';

@HiveType(typeId: 7)
class HomeAppliancesListModel extends HomeAppliancesListEntities {
  @HiveField(0)
  final String listId;

  @HiveField(1)
  final String listTitle;

  @HiveField(2)
  final listsCategory category;

  @HiveField(3)
  final List<ProductEntities> products;

  HomeAppliancesListModel({
    required this.listId,
    required this.listTitle,
    required this.category,
    required this.products,
  }) : super(
    listId: listId,
    listTitle: listTitle,
    category: category,
    products: products,
  );
}
