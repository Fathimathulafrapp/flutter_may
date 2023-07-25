import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: expansiontile(),));
}
class expansiontile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Expansion Tile"),),
     body: const ExpansionTile(title: Text("Colors",style: TextStyle(color: Colors.black,fontSize: 20),),
     subtitle: Text("Expand this Tile"),
     children: [
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.red,),
         title: Text("Red"),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.brown,),
         title: Text("Brown"),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.green,),
         title: Text("Green"),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.yellow,),
         title: Text("Yellow"),
       ),
       ListTile(
         leading: CircleAvatar(backgroundColor: Colors.purple,),
         title: Text("Purple"),
       )
     ],),

   );
  }

}