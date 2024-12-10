import '../../sources.dart';

class ShowList extends StatefulWidget {
  ListEntities list;
  listsCategory category;
  ShowList({
    super.key,
    required this.list,
    required this.category,
  });

  @override
  State<ShowList> createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.deepPurple.shade300, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                widget.list.listTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 16,),
              ),
              InkWell(
                onTap: (){
                  context.read<ListsManagementBloc>().add(RemoveListsManagementEvent(listId: widget.list.listId, category: widget.list.category));
                },
                child: const Icon(Icons.cancel,color: Colors.red,),
              )
            ],
          ),
          ListView.builder(
            itemCount: widget.list.products.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              final product = widget.list.products[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(getProductImagesUrl(widget.category, product.productName)),
                      ),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  title: Padding(padding: const EdgeInsets.only(left: 40),child: Text(product.count.toString(),style: const TextStyle(fontSize: 16,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),),
                  trailing: InkWell(
                    onTap: (){
                      context.read<ListsManagementBloc>().add(RemoveProductListsManagementEvent(listId: widget.list.listId, productName: product.productName,category: widget.list.category),);
                    },
                      child: const Icon(Icons.remove_circle,color: Colors.red,weight: 40,)),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
