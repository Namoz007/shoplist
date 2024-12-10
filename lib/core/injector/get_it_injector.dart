import 'package:shoplist/sources.dart';

final getIt = GetIt.instance;
late Box listsBox;


Future<void> getItSetUp() async{
  await Hive.initFlutter((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(FoodModelAdapter());
  Hive.registerAdapter(FoodListModelAdapter());
  Hive.registerAdapter(ElectronicModelAdapter());
  Hive.registerAdapter(ElectronicListModelAdapter());
  Hive.registerAdapter(ClothesModelAdapter());
  Hive.registerAdapter(ClothesListModelAdapter());
  Hive.registerAdapter(HomeAppliancesListModelAdapter());
  Hive.registerAdapter(HomeAppliancesModelAdapter());
  listsBox = await Hive.boxExists("lists") ? await Hive.openBox("lists") : await Hive.openBox<List<ListEntities>>("lists");
  getIt.registerSingleton(Hive);
  getIt.registerSingleton(PickProductCubit());
  getIt.registerSingleton(ListsManagementRepository());
  getIt.registerSingleton(ListsManagementBloc());
}