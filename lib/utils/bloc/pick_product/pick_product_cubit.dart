import '../../../sources.dart';

class PickProductCubit extends Cubit<PickProductState> {
  PickProductCubit() : super(PickProductState(products: []));
  List<ProductEntities> products = [];

  void pickProduct(ProductEntities product) {
    if (products
            .indexWhere((value) => value.productName == product.productName) ==
        -1) {
      products.add(product);
    } else {
      products.removeWhere((value) => value.productName == product.productName);
      products.add(product);
    }
    _emit();
  }

  void unPickProduct(ProductEntities product) {
    if (products[products.indexWhere(
                (value) => value.productName == product.productName)]
            .count ==
        1) {
      products.removeWhere((value) => value.productName == product.productName);
    } else {
      products.removeWhere((value) => value.productName == product.productName);
      products.add(product);
    }

    _emit();
  }

  void clearProducts() {
    products = [];
    _emit();
  }

  void _emit() {
    emit(PickProductState(products: products));
  }
}
