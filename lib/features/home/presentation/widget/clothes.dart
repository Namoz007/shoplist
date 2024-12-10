import '../../../../sources.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
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
            Colors.purple.shade200,
            Colors.purple.shade300,
            Colors.purple.shade400,
            Colors.purple.shade500,
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
                color: Colors.purple.shade900,
              ),
              child: const Icon(Icons.local_mall,size: 35,color: Colors.white,),
            ),
            const SizedBox(height: 10,),
            const Text("Buy clothes",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),),
            const SizedBox(height: 5,),
            const Text("Planning for clothes shopping.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
