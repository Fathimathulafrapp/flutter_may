import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: expandd(),));
}
class expandd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(color: Colors.orange,
            height: 100,
         // child: Image(image: AssetImage("assets/images/rose.png"),),
           ),
         Expanded(child: Container(
           color: Colors.green,
           height: 100,

         )),
         Expanded(child: Container(
           color: Colors.purple,
           height: 100,


         )),
         Expanded(child: Container(
           color: Colors.green,
           height: 100,

         )),
       ],
     ),
    );
  }

}