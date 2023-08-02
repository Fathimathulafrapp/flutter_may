import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tweenanimation(),
    debugShowCheckedModeBanner: false,
  ));
}

class tweenanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                duration: Duration(seconds: 3),
                tween: Tween<double>(begin: 20, end: 300),
                curve: Curves.bounceIn,
                builder: (BuildContext context, double value, Widget? child) {
                  return Icon(
                    Icons.person,
                    color: Colors.red,
                    size: value,

                  );
                },
              ),
              Text(
                'Hlo Developer',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}