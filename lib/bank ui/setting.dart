import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: setting_bank(),));
}
class setting_bank extends StatefulWidget{
  @override
  State<setting_bank> createState() => _setting_bankState();
}

class _setting_bankState extends State<setting_bank> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween

                      ,children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.black,),
                        Text("Settings",style: TextStyle(color: Colors.black,fontSize: 20),),
                        CircleAvatar(backgroundImage: AssetImage("assets/images/teddy.webp"),),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 400,
                      margin: const EdgeInsets.symmetric(horizontal: 8,),
                      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
                      child: TextField(decoration: InputDecoration(hintText:"Search for something" ,border: InputBorder.none,
                          icon: IconButton(onPressed: (){},icon: Icon(Icons.search_outlined,size: 30,),)),
                      ),

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 1000,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            backgroundColor: Colors.white,
                            bottom: PreferredSize(preferredSize: Size.fromHeight(5),
                              child: Container(

                                child: TabBar(
                                  unselectedLabelColor: Colors.black54,
                                  labelColor: Colors.blue[900],
                                  tabs: [
                                    Tab(child:
                                    Text('Edit Profile',style: TextStyle(fontSize: 16),),),
                                    Tab(child:
                                    Text('Pregerence',style: TextStyle(fontSize: 16),),),
                                    Tab(child:
                                    Text('Security',style: TextStyle(fontSize: 16),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(

                      children: [

                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(right: 330),
                          child: Text("Currency",style: TextStyle(color: Colors.grey[600],fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                          child: TextField(decoration: InputDecoration( border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                          ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.only(right: 330),
                          child: Text("Time Zone",style: TextStyle(color: Colors.grey[600],fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                          child: TextField(decoration: InputDecoration( border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                          ),
                          ),
                        ),
                        SizedBox(height: 18,),
                        Padding(
                          padding: const EdgeInsets.only(right: 330),
                          child: Text("Notification",style: TextStyle(color: Colors.black,fontSize: 16),),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon((Icons.toggle_on_rounded),color: Colors.green,size: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("I send or recieve digita currency",style: TextStyle(color: Colors.grey[600])),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon((Icons.toggle_off),color:Colors.grey[400],size: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("I receive merchant order",style: TextStyle(color: Colors.grey[600])),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon((Icons.toggle_on_rounded),color: Colors.green,size: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("There are recommended for my \n account",style: TextStyle(color: Colors.grey[600])),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Container(
                              width: 420,
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.indigo),
                                child: TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 16),),))
                          ],
                        )






                      ],
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}