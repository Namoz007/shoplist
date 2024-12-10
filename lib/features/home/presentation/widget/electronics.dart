import '../../../../sources.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
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
            Colors.grey.shade400,
            Colors.grey.shade500,
            Colors.grey.shade600,
            Colors.grey.shade700,
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
                color: Colors.grey.shade900,
              ),
              child: const Icon(Icons.computer,size: 35,color: Colors.white,),
            ),
            const SizedBox(height: 10,),
            const Text("Buy electronics",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),),
            const SizedBox(height: 5,),
            const Text("Planning for electronic shopping.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
