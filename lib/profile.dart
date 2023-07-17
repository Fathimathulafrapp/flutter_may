import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: profile(),));

}
class profile  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 20,right: 30),
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 350,),
                  Padding(padding: const EdgeInsets.only(top: 30),
                  child: Icon(Icons.menu),)
                ],

              ),
              SizedBox(height: 12,),
              Column(
                children: [
                  Center(
                    child: Padding(padding: EdgeInsets.only(top: 10,left: 30,right: 30),
                    child: CircleAvatar(radius: 60,
                      child: Image(image: AssetImage("assets/images/rose.png",),),),),
                  ),
                  Padding(padding: EdgeInsets.only(left: 120,top: 10),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/facebook.png",)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/google.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/twitter.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/linkin.png")),
                        ),

                      ],
                    ),
                  ),),
                  SizedBox(height: 12,),
                  Center(
                    child: Text("Fathimathul Afra",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Center(
                    child: Text("@afraaa",style: TextStyle(fontSize: 15),),
                  ),
                  Center(
                    child: Text("Mobile App Devolper and Open ",style: TextStyle(fontSize: 18),),
                  ),
                  Center( child: Text("source enthusiastic ",style: TextStyle(fontSize: 18),),

                  )

                ],
              ),
              Container(height: 300,
                margin: EdgeInsets.only(top: 10,left: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular((30)),color: Colors.grey),
                        child: ListTile(
                          leading: Icon(Icons.privacy_tip_outlined),
                          title: TextButton(onPressed: (){}, child: Text("Privacy",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular((30)),color: Colors.grey),
                        child: ListTile(
                          leading: Icon(Icons.history),
                          title: TextButton(onPressed: (){}, child: Text("Purchase History",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular((30)),color: Colors.grey),
                        child: ListTile(
                          leading: Icon(Icons.help),
                          title: TextButton(onPressed: (){}, child: Text("Help and Support",style: TextStyle(fontSize: 18,color: Colors.black),)),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular((30)),color: Colors.grey),
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: TextButton(onPressed: (){}, child: Text("Settings",style: TextStyle(fontSize: 20,color: Colors.black),)),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular((30)),color: Colors.grey),
                        child: ListTile(
                          leading: Icon(Icons.person_add_alt_1_rounded),
                          title: TextButton(onPressed: (){}, child: Text("Invited Friend",style: TextStyle(fontSize: 20,color: Colors.black),)),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

}