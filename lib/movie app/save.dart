import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: save(),));
}
class save extends StatefulWidget{
  @override
  State<save> createState() => _saveState();
}

class _saveState extends State<save> {
  late int tappedindex;
  var Iconn=[
    Icon(Icons.person_outline,color: Colors.white,),
    Icon(Icons.notifications_none_outlined,color: Colors.white,),
    Icon(Icons.history,color: Colors.white,),
    Icon(Icons.subscriptions_rounded,color: Colors.white,),
    Icon(Icons.settings_outlined,color: Colors.white,),
    Icon(Icons.help_outline,color: Colors.white,),
    Icon(Icons.logout,color: Colors.white,)
  ];
  var text =[
    ("My Profile"),
    ("Notification"),
    ("History"),
    ("Subscriptions"),
    ("Setting"),
    ("Help"),
    ("Logout"),

  ];
  @override
  void initState() {
    super.initState();
    tappedindex = 0;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:

      Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 24,),
                Text("Save",style: TextStyle(fontSize: 18,color: Colors.white),),
                SizedBox(height: 24,),
                CircleAvatar(radius:50,backgroundImage:  AssetImage("assets/images/teddy.webp"),),
                SizedBox(height: 12,),
                Text("Antonio Renders",style: TextStyle(fontSize: 18,color: Colors.white),),
                SizedBox(height: 10,),
                Text("@renders.antonio",style: TextStyle(fontSize: 14,color: Colors.white),),
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 700,
                    width: 800,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey[900]),
                    child: SingleChildScrollView(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListView.builder(
                            itemCount: Iconn.length,
                              shrinkWrap: true,

                              itemBuilder:(context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                                  child: Container(
                                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(15), color:tappedindex == index ? Colors.grey[700]:Colors.grey[900],),
                                    child: ListTile(
                                      leading: CircleAvatar(child: Iconn[index],backgroundColor: Colors.grey[800],),
                                      title: Text(text[index],style: TextStyle(color: Colors.white),),
                                      onTap: (){
                                        setState(() {
                                          tappedindex=index;
                                        });
                                      },

                                    ),

                                  ),
                                );
                              } ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]        ),
      )
    );
  }
}