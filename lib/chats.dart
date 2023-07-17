import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,home: chats(),));
}
class chats extends StatelessWidget{
  var images=[("assets/images/rose.png"),("assets/images/fruit.png"),("assets/images/honey.jpg"),("assets/images/strawberry.jpg")];
  var text=['thanu','sagar','ammu','keerthy'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.separated(

       itemBuilder:(context,index){
         return Card(borderOnForeground: true,
           color: Colors.white,
           child: ListTile(
             leading: CircleAvatar(child: Image(image: AssetImage(images[index]),),),
             title: Text(text[index]),
             trailing: Text("11.45",style: TextStyle(fontSize: 10),),
           ),
         );
       },separatorBuilder: (context,index){
       return Divider(color: Colors.white,
         thickness:2 ,
       );
     }, itemCount: text.length,),


   );
  }

}