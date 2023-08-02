import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/product2.dart';

import 'dummyproduct.dart';

void main(){
  runApp(MaterialApp(home: product1(),
  routes: {
    'second':(context)=>ProductList(),
  },)
  );
}
class product1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Product"),
     ),
     body: ListView(
       children: dummyproduct.map((product){
         // return TextButton(onPressed: ()=>gotonext(context,product["id"]), child: Text("${product["name"]}"));
         return GestureDetector(onTap: ()=>gotonext(context,product["id"]) ,
             child: Card(
                 child: Image.asset(("${product["image"]}"),height: 100,)));
       }).toList(),


     ),
   );
  }

  gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed('second',arguments: product);
  }

}
