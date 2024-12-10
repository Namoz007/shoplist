import '../../../../sources.dart';

class CreateElectronicListScreen extends StatefulWidget {
  const CreateElectronicListScreen({super.key});

  @override
  State<CreateElectronicListScreen> createState() => _CreateElectronicListScreenState();
}

class _CreateElectronicListScreenState extends State<CreateElectronicListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select products for electronic list!"),
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
          itemCount: electronic_products_imgs.length,
          itemBuilder: (context, index) {
            return ShowProductForMenu(
              productImg: electronic_products_imgs[index],
              productName: electronic_products_names[index],
              category: listsCategory.electronic,
            );
          },
        ),
      ),
      bottomNavigationBar: CreateList(buttonText: "Create electronic list",category: listsCategory.electronic,),
    );
  }
}
