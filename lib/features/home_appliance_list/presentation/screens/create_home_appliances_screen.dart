import '../../../../sources.dart';

class CreateHomeAppliancesScreen extends StatefulWidget {
  const CreateHomeAppliancesScreen({super.key});

  @override
  State<CreateHomeAppliancesScreen> createState() => _CreateHomeAppliancesScreenState();
}

class _CreateHomeAppliancesScreenState extends State<CreateHomeAppliancesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select products for home appliances list!"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 25,
            crossAxisSpacing: 15,
          ),
          itemCount: home_appliances_imgs.length,
          itemBuilder: (context, index) {
            return ShowProductForMenu(
              productImg: home_appliances_imgs[index],
              productName: home_appliances_names[index],
              category: listsCategory.appliance,
            );
          },
        ),
      ),
      bottomNavigationBar: CreateList(buttonText: "Create home appliances list",category: listsCategory.appliance,),
    );
  }
}
