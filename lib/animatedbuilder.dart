import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(){
 runApp(MaterialApp(home:Spinner (),)) ;
}
class Spinner extends StatefulWidget {
 @override
 _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> with SingleTickerProviderStateMixin {
 late AnimationController _controller;

 @override
 void initState() {
  super.initState();
  _controller = AnimationController(
   duration: const Duration(seconds: 10),
   vsync: this,
  )
   ..repeat();
 }

 @override
 void dispose() {
  _controller.dispose();
  super.dispose();
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   body: Center(
    child: Container(
      color: Colors.greenAccent,
     height: 200,
     width: 200,
     child: AnimatedBuilder(
    
       builder: ( context,child) =>Transform.rotate(angle: _controller.value*2.0 * math.pi,
        child: child,
        
       ),
       animation: _controller,
       child: Container(
         height: 100,
         width: 100,
         color: Colors.red,



       ),
     ),
    ),
   ),

  );
 }
}