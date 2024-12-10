import '../../sources.dart';

class CreateListContainer extends StatefulWidget {
  listsCategory category;
  CreateListContainer({super.key,required this.category,});

  @override
  State<CreateListContainer> createState() => _CreateListContainerState();
}

class _CreateListContainerState extends State<CreateListContainer> {
  final _formKey = GlobalKey<FormState>();
  final _listTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Create list"),
      content: Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please, return input list title!";
                  }

                  return null;
                },
                controller: _listTitleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "List title",
                  prefixIcon: const Icon(Icons.fact_check_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                flex: 1,
                child: ShowPickProducts(category: widget.category,),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
      actions: [
        FilledButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        BlocBuilder<PickProductCubit, PickProductState>(
          builder: (context, state) {
            if (state is PickProductState) {
              return FilledButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    context.read<ListsManagementBloc>().add(
                      CreateListsManagementEvent(
                        list: createListFunction(widget.category, _listTitleController.text, state.products),
                      ),
                    );
                    Navigator.pop(context);
                    context.read<PickProductCubit>().clearProducts();
                  }
                },
                child: const Text("Create list"),
              );
            }

            return Container();
          },
        ),
      ],
    );
  }
}
