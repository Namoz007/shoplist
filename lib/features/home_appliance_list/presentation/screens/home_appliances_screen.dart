
import '../../../../sources.dart';

class HomeAppliancesScreen extends StatefulWidget {
  const HomeAppliancesScreen({super.key});

  @override
  State<HomeAppliancesScreen> createState() => _HomeAppliancesScreenState();
}

class _HomeAppliancesScreenState extends State<HomeAppliancesScreen> {

  @override
  void initState() {
    super.initState();
    context.read<ListsManagementBloc>().add(GetAllListsManagementEventFromStorage(category: listsCategory.appliance));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Appliances list screen"),
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
            if(state.lists.where((value) => value.category == listsCategory.appliance).toList().isNotEmpty){
              return ShowListsForCategory(
                category: listsCategory.appliance,
                lists: state.lists.where((value) => value.category == listsCategory.appliance).toList(),
              );
            }else{
              return const Center(child: Text("Home Appliances lists not found!",style: TextStyle(fontSize: 18,color: Colors.deepPurple),),);
            }
          }
          return Container();
        },
      ),
      bottomNavigationBar: CreateListButton(
        buttonText: "New home appliances list",
        containerColors: [
          Colors.deepPurple.shade300,
          Colors.deepPurple.shade400,
          Colors.deepPurple.shade500,
          Colors.deepPurple.shade500,
        ],
        tapNavigator: const CreateHomeAppliancesScreen(),
      ),
    );
  }
}
