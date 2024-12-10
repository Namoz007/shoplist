import 'package:shoplist/sources.dart';

class ListsManagementBloc
    extends Bloc<ListsManagementEvent, ListsManagementState> {
  List<ListEntities> lists = [];
  final _repository = getIt<ListsManagementRepository>();
  ListsManagementBloc() : super(InitialListManagementState()) {
    on<GetAllListsManagementEvent>(_getAllLists);
    on<GetAllListsManagementEventFromStorage>(_getAllListsFromStorage);
    on<CreateListsManagementEvent>(_createList);
    on<RemoveProductListsManagementEvent>(_removeListProduct);
    on<RemoveListsManagementEvent>(_removeList);
  }

  void _removeList(RemoveListsManagementEvent event,emit){
    emit(LoadingListManagementState());
    final data = _repository.removeList(event.listId);
    if(data != null){
      emit(ErrorListManagementState(message: data));
      Future.delayed(const Duration(seconds: 2));
    }
    add(GetAllListsManagementEventFromStorage(category: event.category));
  }

  void _removeListProduct(RemoveProductListsManagementEvent event,emit) {
    emit(LoadingListManagementState());
    final data = _repository.removeListProduct(event.listId, event.productName);
    if(data != null){
      emit(ErrorListManagementState(message: data));
      Future.delayed(const Duration(seconds: 2));
    }
    add(GetAllListsManagementEventFromStorage(category: event.category));
  }

  void _createList(CreateListsManagementEvent event,emit) async{
    emit(LoadingListManagementState());
    final data = await _repository.createList(event.list,event.list.category);
    if(data == null){
      add(GetAllListsManagementEventFromStorage(category: event.list.category));
    }else{
      emit(ErrorListManagementState(message: data));
      Future.delayed(const Duration(seconds: 2));
      add(GetAllListsManagementEventFromStorage(category: event.list.category));
    }
  }

  void _getAllLists(GetAllListsManagementEvent event, emit) {
    emit(LoadingListManagementState());
    if (lists.isEmpty) {
      add(GetAllListsManagementEventFromStorage(category: event.category));
    } else {
      emit(LoadedListManagementState(lists: [for(int i = 0;i < lists.length;i++) if(lists[i].category == event.category) lists[i]]));
    }
  }

  void _getAllListsFromStorage(
      GetAllListsManagementEventFromStorage event, emit) async {
    emit(LoadingListManagementState());
    lists = await _repository.getAllLists();
    emit(LoadedListManagementState(lists: [for(int i = 0;i < lists.length;i++) if(lists[i].category == event.category) lists[i]]));
  }

}
