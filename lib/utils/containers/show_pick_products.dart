import '../../sources.dart';

class ShowPickProducts extends StatefulWidget {
  listsCategory category;
  ShowPickProducts({super.key,required this.category,});

  @override
  State<ShowPickProducts> createState() => _ShowPickProductsState();
}

class _ShowPickProductsState extends State<ShowPickProducts> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickProductCubit, PickProductState>(
      builder: (context, state) {
        if (state is PickProductState) {
          return GridView.builder(
            itemCount: state.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(getProductImagesUrl(widget.category, state.products[index].productName))),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.bottomRight,
                child: Text(state.products[index].count.toString(),style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
              );
            },
          );
        }

        return Container();
      },
    );
  }
}
