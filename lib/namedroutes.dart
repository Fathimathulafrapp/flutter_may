import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: homepage(),
    routes:{
    'first':(context)=>Firstpage(),
      'second':(context)=>Secondpage(),
    },),
  );
}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body:ListView(
       children: [
         SizedBox(height: 50,),
         ElevatedButton(onPressed: (){
           Navigator.pushNamed(context, 'first');
         }, child: Text(" first page")),
SizedBox(height: 30,),
         ElevatedButton(onPressed: (){
           Navigator.pushNamed(context, 'second');
         }, child: Text(" second page")),

       ],
     ),
   );
  }

}
class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.purpleAccent,
    body: Center(
      child: Text("My First Screen",style: TextStyle(fontSize: 20),),
    ),
  );
  }

}

class Secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text("My Second Screen",style: TextStyle(fontSize: 20),),
      ),
    );
  }

}