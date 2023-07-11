
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultipleGridView(),));
}
class MultipleGridView extends StatelessWidget {
  var text =["1","2","3","4","5","6","7","8","9","10"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("Some Text",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20),), Text("0/10",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20)),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(color: Colors.blue,
              child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [

              Text(text[index],style: TextStyle(fontSize: 30),),
                Text("0/20"),
              ],
              )));
            },
          ),

          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(color: Colors.blue,
                  child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Text(text[index],style: TextStyle(fontSize: 30),),
                      Text("0/20"),
                    ],
                  )));

            },
          ),

          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(color: Colors.blue,
              child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [

              Text(text[index],style: TextStyle(fontSize: 30),),
                Text("0/20"),
                ],
              )));
            },
          ),

          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(color: Colors.blue,
                  child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Text(text[index],style: TextStyle(fontSize: 30),),

                      Text("0/20"),
                    ],
                  )));

            },
          )
        ],
      ),
    );
  }
}