import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: list(),));
}
class list extends StatelessWidget{
  var data =['anu','karthi','appu','shiva'];
  var colors=[800,700,600,500];
  var images=["assets/images/img.png","assets/images/img_1.png","assets/images/kk.png"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('List Page'),),
     body: ListView.builder(
       itemCount: images.length,
         itemBuilder:(context,index){
       return Card(color: Colors.purple[colors[index]],

           child: Center(
             // child:Text(data[index]),
             child: Image(image:AssetImage(images[index])),

           ),
       );
     }),
   );
  }

}