import 'package:flutter/material.dart';
import 'package:flutter_may/reorderablelist.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: flexible_widget(),));
}
class flexible_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Flexible widget"),
     backgroundColor: Colors.purpleAccent,
     leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),),
     body: Center(
       child: Container(
         child: Row(
           children: [
             Flexible(
                 flex:1,
                 fit: FlexFit.tight,
                 child:Container(
                   height: 100,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),color: Colors.pinkAccent

                   ),
                 )
             ),
             SizedBox(width: 20,

             ),
             Flexible(
                 flex:1,
                 fit: FlexFit.tight,
                 child:Container(
                   height: 100,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),color: Colors.pinkAccent

                   ),
                 )
             ),

           ],
         ),
       ),
     ),
   );
  }

}