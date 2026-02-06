import 'package:animationdemo/animations/explicit_inbuilt.dart';
import 'package:animationdemo/animations/implicit_inbuilt.dart';
import 'package:animationdemo/animations/tween.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color containerColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ImplicitInbuilt()));
              },
              child: Text('Implicit Inbuilt'),
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TweenDemo()));
              },
              child: Text('Tween Animation Builder'),
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExplicitInbuilt()));
              },
              child: Text('Explicit Inbuilt'),
            ),
          ],
        ),
      )
    );
  }
}