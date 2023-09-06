import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: services(),));
}
class services extends StatelessWidget{
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
                    Text("Services",style: TextStyle(color: Colors.black,fontSize: 20),),
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Row(
              children: [
                Container(
                    height: 80,
                    width: 220,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.health_and_safety_outlined,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13,right: 27),
                            child: Text("Life insurance",style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 4),
                            child: Text("Unlimited Protection",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                          )
                        ],

                      ),
                    )
                ),
                SizedBox(width: 12,),
                Container(
                    height: 80,
                    width: 220,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.shopify,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13,right: 68),
                            child: Text("Shopify",style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 4),
                            child: Text("Unlimited Protection",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                          )
                        ],

                      ),
                    )
                ),
                SizedBox(width: 12,),
                Container(
                    height: 80,
                    width: 220,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.health_and_safety_outlined,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13,right: 27),
                            child: Text("Life insurance",style: TextStyle(color: Colors.blue[900],fontSize: 16,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 4),
                            child: Text("Unlimited Protection",style: TextStyle(color: Colors.grey[400],fontSize: 14),),
                          )
                        ],

                      ),
                    )
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Bank Services List",style: TextStyle(fontSize: 18,color: Colors.indigo[900],fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 23,right: 23),
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
            child:     ListTile(
              leading: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Container(height: 50,width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                    child: Icon(Icons.attach_money_sharp,color: Colors.indigo[900],),)
              ),
              // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 124,
                    top: 10),
                    child: Text("Buisness Loans",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4,right: 100),
                    child: Text("It is a long established",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                  ),

                ],

              ),
              trailing: TextButton(onPressed: (){}, child: Text("View Details",style: TextStyle(color: Colors.indigo[900]),),)
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 23,right: 23),
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
            child:     ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Container(height: 50,width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                      child: Icon(Icons.wallet_travel_rounded,color: Colors.indigo[900],),)
                ),
                // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 101,
                          top: 10),
                      child: Text(" Checking accounts",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,right: 100),
                      child: Text("It is a long established",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                  ],

                ),
                trailing: TextButton(onPressed: (){}, child: Text("View Details",style: TextStyle(color: Colors.indigo[900]),),)
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 23,right: 23),
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
            child:     ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Container(height: 50,width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                      child: Icon(Icons.switch_access_shortcut,color: Colors.indigo[900],),)
                ),
                // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 120,
                          top: 10),
                      child: Text("Saving Accounts",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,right: 100),
                      child: Text("It is a long established",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                  ],

                ),
                trailing: TextButton(onPressed: (){}, child: Text("View Details",style: TextStyle(color: Colors.indigo[900]),),)
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 23,right: 23),
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
            child:     ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Container(height: 50,width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                      child: Icon(Icons.person,color: Colors.indigo[900],),)
                ),
                // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 85,
                          top: 10),
                      child: Text("Debit and credit cards",style: TextStyle(color: Colors.indigo[900],fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,right: 100),
                      child: Text("It is a long established",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                  ],

                ),
                trailing: TextButton(onPressed: (){}, child: Text("View Details",style: TextStyle(color: Colors.indigo[900]),),)
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 23,right: 23),
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
            child:     ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Container(height: 50,width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                      child: Icon(Icons.health_and_safety,color: Colors.indigo[900],),)
                ),
                // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 110,
                          top: 10),
                      child: Text("Buisness Loans",style: TextStyle(color: Colors.indigo[900],fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,right: 100),
                      child: Text("It is a long established",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                  ],

                ),
                trailing: TextButton(onPressed: (){}, child: Text("View Details",style: TextStyle(color: Colors.indigo[900]),),)
            ),
          ),
        ),
        SizedBox(height: 20,),

      ],
    ),
  );
  }

}