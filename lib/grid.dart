import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: grid(),));
}
class grid extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3 ,
       crossAxisSpacing: 10,
       mainAxisSpacing: 10,
     ),children: [
       Card(color: Colors.cyanAccent,
         child: Image(image: AssetImage("assets/images/img.png"),),
     ),
       Card(color: Colors.greenAccent,
       ),
       Card(color: Colors.yellowAccent,
       ),
       Card(color: Colors.redAccent,
       ),
       Card(color: Colors.purpleAccent,
       ),
       Card(color: Colors.orangeAccent,
       )
       ],),
   );
  }

}