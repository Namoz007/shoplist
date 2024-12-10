import '../../sources.dart';

class ShowProductForMenu extends StatefulWidget {
  String productImg;
  String productName;
  listsCategory category;
  ShowProductForMenu({
    super.key,
    required this.productImg,
    required this.productName,
    required this.category,
  });

  @override
  State<ShowProductForMenu> createState() => _ShowProductForMenuState();
}

class _ShowProductForMenuState extends State<ShowProductForMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(widget.productImg),
                // fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomRight,
            child: Text(widget.productName,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent,),),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AddProductButton(productName: widget.productName,category: widget.category,),
      ],
    );
  }
}
