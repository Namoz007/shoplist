
import 'package:shoplist/sources.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await getItSetUp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<PickProductCubit>()),
        BlocProvider(create: (context) => getIt<ListsManagementBloc>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
