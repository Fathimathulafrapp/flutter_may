import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:
  false,
    home: earnings(),));
}
class earnings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(


        children: [
          Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 20),
                            child: Text("Hi Theertha Technologies ,",style: TextStyle(fontSize: 18,color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,right: 30),
                            child: Text("ONLINE",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 370,),
                        child: Text("Earnings",style: TextStyle(fontSize: 30,color: Colors.white),),
                      )
                    ],

                  ),
                ),
                Positioned(top: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(

                        height: 100,
                        width: 450,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white),
                      ),
                    ))
              ]

          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 380),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text("Your assets",style: TextStyle(fontSize: 18),),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(

                  children: [
                    Card(
                      child: Container(
                        height: 150,
                        width:200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [
                                Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Card(
                      child:
                      Container(
                        height: 150,
                        width:200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [
                                Text("0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text("Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),


                      ),
                    )

                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: Container(
                          height: 180,
                          width:120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [
                                    Text("0",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                    Text("Tawa",style: TextStyle(fontSize: 18,),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Card(
                      child: Container(
                        height: 180,
                        width:120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Text("0",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                  Text("Mops",style: TextStyle(fontSize: 18,),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Card(
                      child: Container(
                        height: 180,
                        width:120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Text("0",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                  Text("Kitchen Tools",style: TextStyle(fontSize: 18,),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Card(
                      child: Container(
                        height: 180,
                        width:120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Text("0",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                  Text("brooms",style: TextStyle(fontSize: 18,),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 360),
                child: Column(
                  children: [


                  ],
                ),

              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Text("Order Details",style: TextStyle(fontSize: 18),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 300,
              height: 500,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(15), color:Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.note,color: Colors.black,),backgroundColor: Colors.grey[200],radius: 30,),
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220,top: 15),
                        child: Text("Pending Order",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Text("Total Order : 0"),
                      )
                    ],
                  ),




                ),
              ),

            ),
          ),

        ],
      ),

    ) ;
  }

}