import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: about(),));
}
class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Center(
                child: Image(image: AssetImage("assets/images/about.png"),),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top:30,left: 60,right: 60),
           child: Text("Intdroducing Community",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),

            Padding(padding: const EdgeInsets.only(top: 15,left: 90,right: 60),
              child: Text("easy organise your related groups and sends announcements.Now,your communities,like neighbourhoods or schools ",style: TextStyle(fontSize: 15),),

            ),
          ],
        ),
      ),
    );
  }

}