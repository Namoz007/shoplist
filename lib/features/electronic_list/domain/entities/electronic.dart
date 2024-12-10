import 'package:shoplist/sources.dart';

class Electronic extends ProductEntities {
  Electronic({
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
