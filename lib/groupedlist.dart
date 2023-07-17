import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: groupedlist(),
  debugShowCheckedModeBanner: false,));
}
class groupedlist extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Grouped ListView",)),),
      body:
        Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text("Android"),
              ),
              Card(
                child: ListTile(
                  leading: Container(
                      color: Colors.purple,
                    height: 40,
                    width: 40,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("Android Tutorial",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ',style: TextStyle(fontSize: 15), )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text("Flutter "),
              ),

              Card(
                child: ListTile(
                  leading: Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("Flutter Tutorial",style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ' ,style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text("IOS "),
              ),
              Card(
                child: ListTile(
                  leading: Container(
                    color: Colors.pink,
                    height: 50,
                    width: 50,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("IOS Tutorial"),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ',style: TextStyle(fontSize: 15), )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),




                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text("Java "),
              ),

              Card(
                child: ListTile(
                  leading: Container(
                    color: Colors.pinkAccent,
                    height: 50,
                    width: 50,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("Java Tutorial",style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ',style: TextStyle(fontSize: 15), )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),


                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                  child: Text("Python "),
                ),
              Card(
                child: ListTile(
                  leading: Container(
                    color: Colors.purpleAccent,
                    height: 50,
                    width: 50,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("Python Tutorial",style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ',style: TextStyle(fontSize: 15), )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),



                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Text("React "),
              ),
              Card(
                child: ListTile(
                  leading: Container(
                    color: Colors.purpleAccent,
                    height: 50,
                    width: 50,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: Column(
                      children: [
                        Text("React Tutorial",style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            SizedBox(height: 30,),
                            Text(' HanTH ',style: TextStyle(fontSize: 15), )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(' 24/12/23 ',style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                  ),



                ),
              )


            ],
          ),
        )




      );
  }

}
