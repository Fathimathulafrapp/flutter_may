import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(MaterialApp(home: liquidw(),));
}

class liquidw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:appbarclr()),
      body: LiquidSwipe(
          enableSideReveal: true,
          slideIconWidget: Icon(Icons.arrow_back),
          positionSlideIcon: .9,
          pages: [
            Container(color: Colors.cyan,),
            Container(color: Colors.orange,)
          ]),
    );
  }
}
class appbarclr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: "Liquid ",
              style: TextStyle(
                color: Colors.black,
              )),
          TextSpan(
              text: "Swipe",
              style: TextStyle(
                color: Colors.orange[700],
              )),

        ],
      ),
    );
  }
}