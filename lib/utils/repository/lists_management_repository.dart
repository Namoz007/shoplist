import 'dart:math';

import 'package:shoplist/sources.dart';

class ListsManagementRepository{

  Future<List<ListEntities>> getAllLists() async{
    return listsBox.get("lists") == null ? [] : [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
  }

  Future<String?> createList(ListEntities list,listsCategory category) async{
    List<ListEntities> lists = [];
    try{
      switch(category){
        case listsCategory.food:
          list.products = list.products.map((value) => FoodModel.fromJson(value.toJson())).toList();
          if(listsBox.get("lists") != null){
            lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
            while(true){
              String id = "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}";
              if(lists.indexWhere((value) => value.listId ==  id) == -1){
                lists.add(FoodListModel(listId: id, listTitle: list.listTitle, products: list.products, category: list.category,),);
                break;
              }
            }
          }else{
            lists.add(FoodListModel(listId: "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}", listTitle: list.listTitle, products: list.products, category: list.category));
          }
          listsBox.put("lists", lists);
          break;
        case listsCategory.electronic:
          list.products = list.products.map((value) => ElectronicModel.fromJson(value.toJson())).toList();
          if(listsBox.get("lists") != null){
            lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
            while(true){
              String id = "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}";
              if(lists.indexWhere((value) => value.listId ==  id) == -1){
                lists.add(ElectronicListModel(listId: id, listTitle: list.listTitle, products: list.products, category: list.category,),);
                break;
              }
            }
          }else{
            lists.add(ElectronicListModel(listId: "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}", listTitle: list.listTitle, products: list.products, category: list.category));
          }
          listsBox.put("lists", lists);
          break;
        case listsCategory.clothes:
          list.products = list.products.map((value) => ClothesModel.fromJson(value.toJson())).toList();
          if(listsBox.get("lists") != null){
            lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
            while(true){
              String id = "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}";
              if(lists.indexWhere((value) => value.listId ==  id) == -1){
                lists.add(ClothesListModel(listId: id, listTitle: list.listTitle, products: list.products, category: list.category,),);
                break;
              }
            }
          }else{
            lists.add(ClothesListModel(listId: "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}", listTitle: list.listTitle, products: list.products, category: list.category));
          }
          listsBox.put("lists", lists);
          break;
        case listsCategory.appliance:
          list.products = list.products.map((value) => HomeAppliancesModel.fromJson(value.toJson())).toList();
          if(listsBox.get("lists") != null){
            lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
            while(true){
              String id = "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}";
              if(lists.indexWhere((value) => value.listId ==  id) == -1){
                lists.add(HomeAppliancesListModel(listId: id, listTitle: list.listTitle, products: list.products, category: list.category,),);
                break;
              }
            }
          }else{
            lists.add(HomeAppliancesListModel(listId: "${UniqueKey().toString()}${Random().nextInt(9999).toString()}${UniqueKey().toString()}", listTitle: list.listTitle, products: list.products, category: list.category));
          }
          listsBox.put("lists", lists);
          break;
        default:
          break;
      }
    }catch(e){
      return "Sorry, not created list!";
    }
  }

  String? removeListProduct(String listId,String productName){
    try{
      List<ListEntities> lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
      final list = lists[lists.indexWhere((value) => value.listId == listId)];
      list.products.removeWhere((value) => value.productName == productName);
      lists.removeWhere((value) => value.listId == list.listId);
      if(list.products.isNotEmpty){
        lists.add(list);
      }
      listsBox.put("lists", lists);
    }catch(e){
      return "Sorry,not remove product!";
    }
  }

   String? removeList(String listId){
    try{
      List<ListEntities> lists = [for(int i = 0;i < listsBox.get("lists").length;i++) listsBox.get("lists")[i] as ListEntities];
      lists.removeWhere((value) => value.listId == listId);
      listsBox.put("lists", lists);
    }catch(e){
      return "Sorry,not remove list!";
    }
  }
}