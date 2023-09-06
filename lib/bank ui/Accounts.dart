import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: accounts(),));

}
class accounts extends StatelessWidget{
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
                   Text("Accounts",style: TextStyle(color: Colors.black,fontSize: 20),),
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
       Center(
         child: Row(children: [
           Padding(
             padding: const EdgeInsets.only(left: 50),
             child: Container(
                 height: 80,
                 width: 180,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                 child: ListTile(
                   leading: CircleAvatar(child: Icon(Icons.attach_money_outlined,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 12,right: 20),
                         child: Text("My Balance",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 28),
                         child: Text("\$12,750",style: TextStyle(color: Colors.blue[900],fontSize: 17,fontWeight: FontWeight.bold),),
                       )
                     ],

                   ),
                 )
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
                 height: 80,
                 width: 180,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                 child: ListTile(
                   leading: CircleAvatar(child: Icon(Icons.insert_chart_outlined,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 12,right: 40),
                         child: Text("Income",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 40),
                         child: Text("\$5,600",style: TextStyle(color: Colors.blue[900],fontSize: 17,fontWeight: FontWeight.bold),),
                       )
                     ],

                   ),
                 )
             ),
           ),

         ],),
       ),
       SizedBox(height: 18,),
       Center(
         child: Row(children: [
           Padding(
             padding: const EdgeInsets.only(left: 50),
             child: Container(
                 height: 80,
                 width: 180,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                 child: ListTile(
                   leading: CircleAvatar(child: Icon(Icons.collections_bookmark_sharp,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 12,right: 25),
                         child: Text("Expense",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 28),
                         child: Text("\$3,460",style: TextStyle(color: Colors.blue[900],fontSize: 17,fontWeight: FontWeight.bold),),
                       )
                     ],

                   ),
                 )
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
                 height: 80,
                 width: 180,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                 child: ListTile(
                   leading: CircleAvatar(child: Icon(Icons.savings,color: Colors.blue,),backgroundColor: Colors.grey[200],),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 12,right: 10),
                         child: Text("Total Savings",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 40),
                         child: Text("\$7,920",style: TextStyle(color: Colors.blue[900],fontSize: 17,fontWeight: FontWeight.bold),),
                       )
                     ],

                   ),
                 )
             ),
           ),

         ],),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 50,right: 50,top: 30),
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
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                         child: Icon(Icons.my_library_books_sharp),)
                   ),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 70),
                         child: Text("Spotify Subscription",style: TextStyle(color: Colors.indigo[900],fontSize: 18,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 150),
                         child: Text("25 Jan 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                       ),

                     ],

                   ),
                   trailing: Text("\-\$150",style: TextStyle(color: Colors.red),),
                 ),
                 SizedBox(height: 15,),
                 ListTile(
                   leading: Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Container(height: 50,width: 50,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                     child: Icon(Icons.design_services_rounded),)
                   ),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 120),
                         child: Text("Mobile Services",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 150),
                         child: Text("25 Jan 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                       ),

                     ],

                   ),
                   trailing: Text("\-\$340",style: TextStyle(color: Colors.red),),
                 ),
                 SizedBox(height: 15,),
                 ListTile(
                   leading: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Container(height: 50,width: 50,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                         child: Icon(Icons.person_outline),)
                   ),
                   // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                   title: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 140),
                         child: Text("Emilly Wilson",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4,right: 155),
                         child: Text("25 Jan 2021",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                       ),

                     ],

                   ),
                   trailing: Text("\+\$780",style: TextStyle(color: Colors.red),),
                 )

               ],
             ),
           ),
         ),
       ),
       SizedBox(height: 20,),

       Padding(
         padding: const EdgeInsets.only(left: 50),
         child: Text("My Cards",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
       ),

     ],
   ),
 );

  }

}