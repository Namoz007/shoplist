import '../../../../sources.dart';

class HomeDevice extends StatefulWidget {
  const HomeDevice({super.key});

  @override
  State<HomeDevice> createState() => _HomeDeviceState();
}

class _HomeDeviceState extends State<HomeDevice> {
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
            Colors.orange.shade200,
            Colors.orange.shade300,
            Colors.orange.shade500,
            Colors.orange.shade600,
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
                color: Colors.orange.shade800,
              ),
              child: const Icon(Icons.chair,size: 35,color: Colors.white,),
            ),
            const SizedBox(height: 10,),
            const Text("Buy home appliances",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),),
            const SizedBox(height: 5,),
            const Text("Planning for home appliances shopping.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
