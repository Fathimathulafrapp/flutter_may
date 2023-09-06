import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: loans(),
  ));
}
class loans extends StatelessWidget{
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
                    Text("Loans",style: TextStyle(color: Colors.black,fontSize: 20),),
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
                      leading: CircleAvatar(child: Icon(Icons.person,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,right: 27),
                            child: Text("Personal Loans",style: TextStyle(color: Colors.grey[400],fontSize: 14,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 68),
                            child: Text("\$50,000",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
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
                      leading: CircleAvatar(child: Icon(Icons.wallet_travel_rounded,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13,right: 15),
                            child: Text("Coorpration Loans",style: TextStyle(color: Colors.grey[600],fontSize: 14,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 75),
                            child: Text("\$10,000",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
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
                      leading: CircleAvatar(child: Icon(Icons.home_filled,color: Colors.indigo[700],),backgroundColor: Colors.grey[200],),
                      // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/money.png"),radius: 20,backgroundColor: Colors.grey[200],),
                      title: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13,right: 45),
                            child: Text("House Loans",style: TextStyle(color: Colors.grey[600],fontSize: 14,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4,right: 75),
                            child: Text("\$16,000",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
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
          child: Text("Active Loans Overview",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Container(

            height:  500,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 20),
                      child: Text("Loan Money",style: TextStyle(color: Colors.grey[400]),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
                      child: Text("Left to repay",style: TextStyle(color: Colors.grey[400]),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 10,top: 20),
                      child: Text("Repay",style: TextStyle(color: Colors.grey[400]),),

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$100,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$40,500",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 10),
                      child: Container(
                        height: 30,
                        width: 85,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                        child: TextButton(onPressed: () { },child: Text("Repay"),),
                      )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$500,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$25,500",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                          child: TextButton(onPressed: () { },child: Text("Repay"),),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$900,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$40,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                          child: TextButton(onPressed: () { },child: Text("Repay"),),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$50,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,right: 50,top: 10),
                      child: Text("\$40,500",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40,top: 10),
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                          child: TextButton(onPressed: () { },child: Text("Repay"),),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$160,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$100,500",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10),
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                          child: TextButton(onPressed: () { },child: Text("Repay"),),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("\$160,000",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$100,500",style: TextStyle(color: Colors.indigo[900],fontSize: 16),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10),
                        child: Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.indigo)),
                          child: TextButton(onPressed: () { },child: Text("Repay"),),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Colors.grey[200],height: 20,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 50,top: 10),
                      child: Text("Total\n \$125,000",style: TextStyle(color: Colors.red,fontSize: 14),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 50,top: 10),
                      child: Text("\$750,000",style: TextStyle(color: Colors.red,fontSize: 14),),
                    ),

                  ],
                ),





              ],
            ),
          ),
        )
      ],
    ),
  );
  }

}