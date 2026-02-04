import 'package:flutter/material.dart';

class ImplicitInbuilt extends StatefulWidget {
  const ImplicitInbuilt({super.key});

  @override
  State<ImplicitInbuilt> createState() => _ImplicitInbuiltState();
}

class _ImplicitInbuiltState extends State<ImplicitInbuilt> {

  Color containerColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            AnimatedContainer(
              duration: Duration(seconds: 5),
              curve: Curves.fastOutSlowIn,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: containerColor,
                border: Border.all(color: Colors.cyan, width: 5)
              ),
            )
            ,
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  containerColor = Colors.cyan;
                });
              },
              child: Text('Change Color'),
            )
           ],
        ),
      ),
    );
  }
}