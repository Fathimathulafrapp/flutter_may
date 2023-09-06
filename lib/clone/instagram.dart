import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: insta_page(),));
}
class insta_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Instagram",style: TextStyle(fontFamily: "Lobster_Two",fontSize: 30,color: Colors.black),),

          Row(
            children: [
              Icon(Icons.favorite_outline,color: Colors.black,size: 30,),
          SizedBox(width: 14,),

          Image(image:AssetImage("assets/images/send.png",),height: 30,width: 30, )
            ],
          ),
        ],
      ),),

      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/teddy.webp",),),shape: BoxShape.circle
                        )
                        ),
                        Positioned(top: 50,left: 50,
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,shape: BoxShape.circle,border: Border.all(color: Colors.white,width: 2)
                          ),
                          child: Icon(Icons.add,color: Colors.white,size: 20,),
                        ))
                      ],
                    ),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}