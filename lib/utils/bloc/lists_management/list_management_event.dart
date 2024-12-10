import 'package:shoplist/sources.dart';

sealed class ListsManagementEvent {}

final class GetAllListsManagementEvent extends ListsManagementEvent {
  listsCategory category;

  GetAllListsManagementEvent({
    required this.category,
  });
}

final class GetAllListsManagementEventFromStorage extends ListsManagementEvent {
  listsCategory category;

  GetAllListsManagementEventFromStorage({
    required this.category,
  });
}

final class CreateListsManagementEvent extends ListsManagementEvent {
  ListEntities list;

  CreateListsManagementEvent({
    required this.list,
  });
}

final class RemoveProductListsManagementEvent extends ListsManagementEvent {
  String listId;
  String productName;
  listsCategory category;

  RemoveProductListsManagementEvent({
    required this.listId,
    required this.productName,
    required this.category,
  });
}

final class RemoveListsManagementEvent extends ListsManagementEvent{
  String listId;
  listsCategory category;

  RemoveListsManagementEvent({required this.listId,required this.category,});
}