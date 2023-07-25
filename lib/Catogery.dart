import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: categry(),));
}
class categry extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(left: 25),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           child: Column(
             children: [
               Padding(padding: const EdgeInsets.only(right: 480,top: 10),
               child: Icon(Icons.arrow_back_ios),
               ),
               Padding(padding: const EdgeInsets.only(right: 350,top: 14),
               child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.orange[300],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 120),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55),child: Text("Politics"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.blue[300],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 120),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55),child: Text("Sports"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   )

                 ],
               ),
               Row(
                 children: [
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.red[400],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 120),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55),child: Text("Science"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.pink[300],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 110),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55),child: Text("Technology"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   )

                 ],
               ),
               Row(
                 children: [
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.purple[300],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 120),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55),child: Text("Travel"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(
                     children: [
                       SizedBox(height: 10,),
                       Container(
                         decoration: BoxDecoration(color: Colors.teal[700],borderRadius: BorderRadius.circular(10)
                         ),
                         height: 150,
                         width: 200,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 20,right: 110),
                           child: Column(
                             children: [
                               CircleAvatar(radius: 25,backgroundColor: Colors.white,backgroundImage: AssetImage("assets/images/shape.png"),
                               ),
                               Padding(padding: const EdgeInsets.only(top: 55,left: 8),child: Text("Entertainmet"),)
                             ],
                           ),
                         ),
                       )
                     ],
                   )

                 ],
               ),
             ],
           ),
         ),
       ),
     ),
   );
  }

}
