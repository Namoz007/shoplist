import 'package:shoplist/sources.dart';

class ClothesEntities extends ProductEntities {
  ClothesEntities({
    required super.productName,
    required super.count,
    required super.category,
  });

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
