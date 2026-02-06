import 'package:flutter/material.dart';

class ExplicitInbuilt extends StatefulWidget {
  const ExplicitInbuilt({super.key});

  @override
  State<ExplicitInbuilt> createState() => _ExplicitInbuiltState();
}

class _ExplicitInbuiltState extends State<ExplicitInbuilt> 
  with SingleTickerProviderStateMixin {

    late AnimationController animationController;
    IconData floatingIcon = Icons.pause;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
      duration: Duration(seconds: 15),
      vsync: this
    )..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: animationController,
          alignment: Alignment.center,
          child: Image.asset('lib/assets/galaxy.png')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(animationController.isAnimating){
            animationController.stop();
            setState(() {
              floatingIcon = Icons.play_arrow;
            });
          }
          else{
            animationController.repeat();
            setState(() {
              floatingIcon = Icons.pause;
            });
          }
        },
        child: Icon(
          floatingIcon
        ),
      ),
    );
  }
}