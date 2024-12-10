
import '../../../../sources.dart';

class Food extends ProductEntities{
  Food({
    required super.productName,
    required super.count,
    required super.category,
});


  @override
  Map<String, dynamic> toJson() {
    return {};
  }

}