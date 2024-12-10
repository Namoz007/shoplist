import '../../sources.dart';

class CreateList extends StatefulWidget {
  String buttonText;
  listsCategory category;
  CreateList({
    super.key,
    required this.buttonText,
    required this.category,
  });

  @override
  State<CreateList> createState() => _CreateListState();
}

class _CreateListState extends State<CreateList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickProductCubit,PickProductState>(
      builder: (context, state) {
        if(state is PickProductState){
          return state.products.isEmpty ? const SizedBox() : InkWell(
            onTap: (){
              showDialog(context: context, builder: (context) => CreateListContainer(category: widget.category,));
            },
            child: Container(
              width: double.infinity,
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.deepPurple,
              ),
              alignment: Alignment.center,
              child: Text(widget.buttonText,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
            ),
          );
        }

        return Container();
      },
    );
  }
}
