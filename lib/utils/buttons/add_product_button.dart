import '../../sources.dart';

class AddProductButton extends StatefulWidget {
  String productName;
  listsCategory category;
  AddProductButton({
    super.key,
    required this.productName,
    required this.category,
  });

  @override
  State<AddProductButton> createState() => _AddProductButtonState();
}

class _AddProductButtonState extends State<AddProductButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickProductCubit, PickProductState>(
      builder: (context, state) {
        if (state is PickProductState) {
          return Expanded(
            flex: 1,
            child: state.products.indexWhere(
                        (value) => value.productName == widget.productName) ==
                    -1
                ? GestureDetector(
                    onTap: () {
                      context.read<PickProductCubit>().pickProduct(FoodModel(
                          productName: widget.productName,
                          count: 1,
                          category: listsCategory.food));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple.shade400,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Add to list",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<PickProductCubit>()
                              .unPickProduct(getPickProduct(widget.category, {"productName": widget.productName,
                                "count": state.products[state.products.indexWhere((value) => value.productName == widget.productName,)].count - 1,

                              }));
                        },
                        child: const Icon(Icons.cancel, color: Colors.red),
                      ),
                      Text(
                        state
                            .products[state.products.indexWhere(
                          (value) => value.productName == widget.productName,
                        )]
                            .count
                            .toString(),
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<PickProductCubit>().pickProduct(
                                FoodModel(
                                  productName: widget.productName,
                                  count: state
                                          .products[state.products.indexWhere(
                                        (value) =>
                                            value.productName ==
                                            widget.productName,
                                      )]
                                          .count +
                                      1,
                                  category: listsCategory.food,
                                ),
                              );
                        },
                        child: const Icon(
                          Icons.add_circle_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
          );
        }

        return Container();
      },
    );
  }
}
