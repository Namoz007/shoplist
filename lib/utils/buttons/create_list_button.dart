import '../../../../sources.dart';

class CreateListButton extends StatefulWidget {
  String buttonText;
  List<Color> containerColors;
  Widget tapNavigator;
  CreateListButton({
    super.key,
    required this.buttonText,
    required this.containerColors,
    required this.tapNavigator,
  });

  @override
  State<CreateListButton> createState() => _CreateListButtonState();
}

class _CreateListButtonState extends State<CreateListButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget.tapNavigator));
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: widget.containerColors,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.buttonText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}
