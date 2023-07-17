import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackk(),));
}
class stackk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Container(
           color: Colors.lightGreen,
           height: 300,
           width: 300,

         ),
         Positioned(top: 60,
           bottom: 60,

           child: Container(
             color: Colors.purple,
             height: 250,
             width: 250,

           ),
         ),
         Positioned(top: 60,
             bottom: 60,
             left: 30,
             
             child: Container(
           color: Colors.yellow,
           height: 100,
           width: 100,
         ))
       ],
     ),
   );
  }

}