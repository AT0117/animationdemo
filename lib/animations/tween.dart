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
              tween: IntTween(begin: 0, end: 'Tween Demo'.length),
              duration: Duration(seconds: 1),
              builder: (context, value, child) {
                return Text(
                  'Tween Demo'.substring(0, value),
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            SizedBox(height: 30),
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: newColor),
              duration: Duration(milliseconds: 200),
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