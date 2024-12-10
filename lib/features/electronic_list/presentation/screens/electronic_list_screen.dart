import '../../../../sources.dart';

class ElectronicListScreen extends StatefulWidget {
  const ElectronicListScreen({super.key});

  @override
  State<ElectronicListScreen> createState() => _ElectronicListScreenState();
}

class _ElectronicListScreenState extends State<ElectronicListScreen> {

  @override
  void initState() {
    super.initState();
    context
        .read<ListsManagementBloc>()
        .add(GetAllListsManagementEvent(category: listsCategory.electronic));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electronic list screen"),
      ),
      body: BlocBuilder<ListsManagementBloc, ListsManagementState>(
        builder: (context, state) {
          if (state is LoadingListManagementState) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  direction: ShimmerDirection.ttb,
                  baseColor: Colors.deepPurple.shade200,
                  highlightColor: Colors.white,
                  period: const Duration(seconds: 2),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
            );
          }

          if (state is LoadedListManagementState) {
            if(state.lists.isNotEmpty || state.lists.where((value) => value.category == listsCategory.electronic).toList().isNotEmpty){
              return ShowListsForCategory(
                category: listsCategory.electronic,
                lists: state.lists.where((value) => value.category == listsCategory.electronic).toList(),
              );
            }else{
              return const Center(child: Text("Electronic lists not found!",style: TextStyle(fontSize: 18,color: Colors.deepPurple),),);
            }
          }
          return Container();
        },
      ),
      bottomNavigationBar: CreateListButton(
        buttonText: "New electronic list",
        containerColors: [
          Colors.deepPurple.shade300,
          Colors.deepPurple.shade400,
          Colors.deepPurple.shade500,
          Colors.deepPurple.shade500,
        ],
        tapNavigator: const CreateElectronicListScreen(),
      ),
    );
  }
}
