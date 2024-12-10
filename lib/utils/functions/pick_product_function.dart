import 'package:shoplist/sources.dart';

ProductEntities getPickProduct(listsCategory category,Map<String,dynamic> model){
  if(category == listsCategory.food){
    return FoodModel(productName: model["productName"], count: model['count'], category: category);
  }else if(category == listsCategory.electronic){
    return ElectronicModel(productName: model['productName'], count: model['count'], category: category);
  }else if(category == listsCategory.clothes){
    return ClothesModel(productName: model['productName'], count: model['count'], category: category);
  }else{
    return HomeAppliancesModel(productName: model['productName'], count: model['count'], category: category);
  }
}

ListEntities createListFunction(listsCategory category,String listTitle,List<ProductEntities> products){
  if(category == listsCategory.food){
    return FoodListModel(listId: '', listTitle: listTitle, products: products, category: listsCategory.food);
  }else if(category == listsCategory.electronic){
    return ElectronicListModel(listId: '', listTitle: listTitle, products: products, category: listsCategory.electronic);
  }else if(category == listsCategory.clothes){
    return ClothesListModel(listId: '', listTitle: listTitle, products: products, category: listsCategory.clothes);
  }else{
    return HomeAppliancesListModel(listId: '', listTitle: listTitle, category: listsCategory.appliance, products: products);
  }
}