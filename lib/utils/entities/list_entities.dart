import 'package:shoplist/sources.dart';

abstract class ListEntities {
  String listId;
  String listTitle;
  List<ProductEntities> products;
  listsCategory category;

  ListEntities({
    required this.listId,
    required this.listTitle,
    required this.products,
    required this.category,
  });
}
