import 'package:shoplist/sources.dart';

sealed class ListsManagementState {}

final class InitialListManagementState extends ListsManagementState {}

final class LoadingListManagementState extends ListsManagementState {}

final class LoadedListManagementState extends ListsManagementState {
  List<ListEntities> lists;

  LoadedListManagementState({
    required this.lists,
  });
}

final class ErrorListManagementState extends ListsManagementState {
  String message;

  ErrorListManagementState({
    required this.message,
  });
}
