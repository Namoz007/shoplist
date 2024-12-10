import '../../sources.dart';

abstract class ProductEntities {
  String productName;
  int count;
  listsCategory category;

  ProductEntities({
    required this.productName,
    required this.count,
    required this.category,
  });

  Map<String,dynamic> toJson();
}
