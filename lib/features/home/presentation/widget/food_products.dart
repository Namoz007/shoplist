import '../../../../sources.dart';

class FoodProducts extends StatefulWidget {
  const FoodProducts({super.key});

  @override
  State<FoodProducts> createState() => _FoodProductsState();
}

class _FoodProductsState extends State<FoodProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade200,
            Colors.green.shade300,
            Colors.green.shade500,
            Colors.green.shade500,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 3),
                color: Colors.green.shade900,
              ),
              child: const Icon(Icons.shopping_cart,size: 35,color: Colors.white,),
            ),
            const SizedBox(height: 10,),
            const Text("Buy food products",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),),
            const SizedBox(height: 5,),
            const Text("Planning for grocery shopping.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
