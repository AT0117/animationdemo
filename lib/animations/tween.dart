import 'package:flutter/material.dart';

class TweenDemo extends StatefulWidget {
  const TweenDemo({super.key});

  @override
  State<TweenDemo> createState() => _TweenDemoState();
}

class _TweenDemoState extends State<TweenDemo> {

  double slidervalue = 0;
  Color newColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: newColor),
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
              builder: (context, color, child) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
                  child: child
                );
              },
              child: Image.asset('lib/assets/sun.png', height: 300, width: 300,),
            ),
            SizedBox(height: 25),
            Slider(
              value: slidervalue,
              onChanged: (value) {
                setState(() {
                  slidervalue = value;
                  newColor = Color.lerp(Colors.white, Colors.blueAccent, slidervalue)!;
                });
              },
            )
          ],
        ),
        
      ),
    );
  }
}