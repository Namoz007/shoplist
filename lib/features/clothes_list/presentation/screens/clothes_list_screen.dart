import '../../../../sources.dart';

class ClothesListScreen extends StatefulWidget {
  const ClothesListScreen({super.key});

  @override
  State<ClothesListScreen> createState() => _ClothesListScreenState();
}

class _ClothesListScreenState extends State<ClothesListScreen> {
  
  @override
  void initState() {
    super.initState();
    context.read<ListsManagementBloc>().add(GetAllListsManagementEvent(category: listsCategory.clothes));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clothes list screen"),
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
            if(state.lists.where((value) => value.category == listsCategory.clothes).toList().isNotEmpty){
              return ShowListsForCategory(
                category: listsCategory.clothes,
                lists: state.lists.where((value) => value.category == listsCategory.clothes).toList(),
              );
            }else{
              return const Center(child: Text("Clothes lists not found!",style: TextStyle(fontSize: 18,color: Colors.deepPurple),),);
            }
          }
          return Container();
        },
      ),
      bottomNavigationBar: CreateListButton(
        buttonText: "New clothes list",
        containerColors: [
          Colors.deepPurple.shade300,
          Colors.deepPurple.shade400,
          Colors.deepPurple.shade500,
          Colors.deepPurple.shade500,
        ],
        tapNavigator: const CreateClothesList(),
      ),
    );
  }
}
