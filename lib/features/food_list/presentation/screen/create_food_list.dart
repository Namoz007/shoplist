import 'package:shoplist/utils/buttons/create_list.dart';

import '../../../../sources.dart';

class CreateFoodList extends StatefulWidget {
  const CreateFoodList({super.key});

  @override
  State<CreateFoodList> createState() => _CreateFoodListState();
}

class _CreateFoodListState extends State<CreateFoodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select products for food list!"),
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
          itemCount: foods_products_imgs.length,
          itemBuilder: (context, index) {
            return ShowProductForMenu(
              productImg: foods_products_imgs[index],
              productName: foods_products_names[index],
              category: listsCategory.food,
            );
          },
        ),
      ),
      bottomNavigationBar: CreateList(buttonText: "Create food list",category: listsCategory.food,),
    );
  }
}
