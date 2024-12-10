import '../../../../sources.dart';

class CreateClothesList extends StatefulWidget {
  const CreateClothesList({super.key});

  @override
  State<CreateClothesList> createState() => _CreateClothesListState();
}

class _CreateClothesListState extends State<CreateClothesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select products for clothes list!"),
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
          itemCount: clothes_products_imgs.length,
          itemBuilder: (context, index) {
            return ShowProductForMenu(
              productImg: clothes_products_imgs[index],
              productName: clothes_products_names[index],
              category: listsCategory.clothes,
            );
          },
        ),
      ),
      bottomNavigationBar: CreateList(buttonText: "Create clothes list",category: listsCategory.clothes,),
    );
  }
}
