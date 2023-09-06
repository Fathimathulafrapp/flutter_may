import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: investments(),));
}
class investments extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    body: ListView(
      children: [
        Container(
          color: Colors.white,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
                    Text("Investments",style: TextStyle(color: Colors.black,fontSize: 20),),
                    CircleAvatar(backgroundImage: AssetImage("assets/images/teddy.webp"),),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: 420,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey[300]),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,color: Colors.grey,)),
                      Text("Search for something",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                height: 80,
                width: 600,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
               child: ListTile(
                 leading: CircleAvatar(child: Icon(Icons.attach_money_outlined,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                 // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                 title: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 210,top: 12),
                       child: Text("Total invested Amount",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 260,top: 3),
                       child: Text("\$150,0000",style: TextStyle(color: Colors.blue[900],fontSize: 18,fontWeight: FontWeight.bold),),
                     )
                   ],

                 ),
               )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                  height: 80,
                  width: 600,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.incomplete_circle,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                    // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 210,top: 12),
                          child: Text("Number of Investments",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 310,top: 3),
                          child: Text("1,250",style: TextStyle(color: Colors.blue[900],fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],

                    ),
                  )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                  height: 80,
                  width: 600,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.keyboard_return,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                    // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                    title: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 270,top: 12),
                          child: Text("Rate of return",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 295,top: 3),
                          child: Text("\+5.80\%",style: TextStyle(color: Colors.blue[900],fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                      ],

                    ),
                  )
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text("Yearly Total Investment",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text("Monthly Revenue",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ],
    ),
  );
  }

}