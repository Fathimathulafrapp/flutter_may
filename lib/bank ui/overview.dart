import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: overview(),));
}
class overview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
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
                     Text("Overview",style: TextStyle(color: Colors.black,fontSize: 20),),
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
         SizedBox(height: 15,),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Text('My Cards ',style: TextStyle(color: Colors.black,fontSize: 17),),
         ),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20,top: 10),
               child: Container(
                 height: 200,
                 width: 300,
                 decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   children: [
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 20,right: 90,left: 20),
                           child: Text("Balance",style: TextStyle(color: Colors.white,fontSize: 15),),
                         ),
                     Padding(
                     padding: const EdgeInsets.only(top: 5,right: 75),
                     child: Text("\$5,756",style: TextStyle(color: Colors.white,fontSize: 16),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,right: 30),
                     child: Text("CARD HOLDER",style: TextStyle(color: Colors.white)),
                   ),
                         Padding(
                           padding: const EdgeInsets.only(top: 5,right: 30),
                           child: Text("Eddy Cussuma",style: TextStyle(color: Colors.white)),
                         ),


                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 100),
                       child: Container(

                         height: 60,
                           width: 60,
                           child: Image(image: AssetImage("assets/images/chip.png"))),
                     ),

                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 84),
                           child: Text("VALID THIRU",style: TextStyle(color: Colors.white),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10,top: 5,right: 40),
                           child: Text("12/22",style: TextStyle(color: Colors.white)),
                         ),
                       ],
                     ),

                   ],
                 ),

               ),
             ),
           ],
         ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Text("Recent Tansactions",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

         ),
         Padding(
           padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
           child: Container(
             height: 220,
             width: 400,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
             child: Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Column(
                 children: [
                   ListTile(
                     leading: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(height: 50,width: 50,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[200]),
                           child: Icon(Icons.collections_bookmark_rounded),)
                     ),
                     // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                     title: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 150),
                           child: Text("Deposite from my",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 4,right: 175),
                           child: Text("28 Janaury 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                         ),

                       ],

                     ),
                     trailing: Text("\-\$850",style: TextStyle(color: Colors.red),),
                   ),
                   SizedBox(height: 15,),
                   ListTile(
                     leading: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(height: 50,width: 50,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[200]),
                           child: Icon(Icons.paypal_outlined),)
                     ),
                     // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                     title: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 150),
                           child: Text("Deposite Paypal",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 4,right: 160),
                           child: Text("25 January 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                         ),

                       ],

                     ),
                     trailing: Text("\+\2,500",style: TextStyle(color: Colors.green),),
                   ),
                   SizedBox(height: 15,),
                   ListTile(
                     leading: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(height: 50,width: 50,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[200]),
                           child: Icon(Icons.monetization_on_outlined),)
                     ),
                     // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                     title: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right: 180),
                           child: Text("Jemi Wilson",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 4,right: 165),
                           child: Text("21 January 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                         ),

                       ],

                     ),
                     trailing: Text("\+\5,400",style: TextStyle(color: Colors.green),),
                   )

                 ],
               ),
             ),
           ),
         ),
       ],
     ),
   );
  }

}