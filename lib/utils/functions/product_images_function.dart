
import '../../sources.dart';

String getProductImagesUrl(listsCategory category,String productName){
  if(category == listsCategory.food){
    return foods_products_imgs[foods_products_names.indexWhere((value) => value == productName)];
  }if(category == listsCategory.electronic){
    return electronic_products_imgs[electronic_products_names.indexWhere((value) => value == productName)];
  }else if(category == listsCategory.clothes){
    return clothes_products_imgs[clothes_products_names.indexWhere((value) => value == productName)];
  }else{
    return home_appliances_imgs[home_appliances_names.indexWhere((value) => value == productName)];
  }
}