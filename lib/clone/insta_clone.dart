import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: instta(),
  ));
}
class instta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Scaffold(
      backgroundColor: Colors.white,


      body: ListView(
        children: [
         Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Instagram",style: TextStyle(fontFamily: "Billabong-Font-1",fontSize: 40,color: Colors.black),),

          Row(
            children: [
              Icon(Icons.favorite_outline,color: Colors.black,size: 30,),
              SizedBox(width: 14,),

              Image(image:AssetImage("assets/images/sendd.png",),height: 30,width: 30, )
            ],
          ),
        ],
      ),
          Container(
            height: 140,

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: [
                   Stack(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 3,left: 7),
                         child: Column(
                           children: [
                             Container(
                               height: 65,
                               width: 65,

                               decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/stry1.webp"),fit: BoxFit.cover),),
                             ),
                             Text("your story",style: TextStyle(fontSize: 14,color: Colors.black))

                           ],
                         ),

                       ),
                       Positioned(top: 46,left: 50,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.blue,shape: BoxShape.circle,border: Border.all(color: Colors.white,width: 2)
                             ),
                             child: Icon(Icons.add,color: Colors.white,size: 17,),
                           ))
                     ],
                   ),
                    SizedBox(width: 18,),
                    Column(
                      children: [
                        Stack(alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 2),
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                      height: 65,
                                      width: 65,

                                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/pic1.jpg"),fit: BoxFit.cover),),
                                    ),
                              ),
                            )
                          ],
                        ),
                        // Container(height:80,
                        //  width:90 ,
                        //  decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.red,width: 2))
                        //   , child: Container(
                        //     height: 50,
                        //     width: 50,
                        //
                        //     decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/pic1.jpg"),fit: BoxFit.cover),),
                        //   ),
                        // ),
                        Text("arathi_arya",style: TextStyle(fontSize: 14,color: Colors.black))
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Stack(alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                  height: 65,
                                  width: 65,

                                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/OIP.jpg"),fit: BoxFit.cover),),
                                ),
                              ),
                            )
                          ],
                        ),

                        Text("zenha_za_nu",style: TextStyle(fontSize: 14,color: Colors.black))
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Stack(alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                  height: 65,
                                  width: 65,

                                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/stry2.jpg"),fit: BoxFit.cover),),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Container(
                        //   height: 75,
                        //   width: 75,
                        //
                        //   decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/stry2.jpg"),fit: BoxFit.cover),),
                        // ),
                        Text("fidha_fa",style: TextStyle(fontSize: 14,color: Colors.black))
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Stack(alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                  height: 65,
                                  width: 65,

                                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/gg.jpg"),fit: BoxFit.cover),),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Container(
                        //   height: 75,
                        //   width: 75,
                        //
                        //   decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/gg.jpg"),fit: BoxFit.cover),),
                        // ),
                        Text("fidha_fa",style: TextStyle(fontSize: 14,color: Colors.black))
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Stack(alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(border: Border.all(color: Colors.redAccent,width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Container(
                                  height: 65,
                                  width: 65,

                                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/stry2.jpg"),fit: BoxFit.cover),),
                                ),
                              ),
                            )
                          ],
                        ),
                        // Container(
                        //   height: 75,
                        //   width: 75,
                        //
                        //   decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/stry2.jpg"),fit: BoxFit.cover),),
                        // ),
                        Text("fidha_fa",style: TextStyle(fontSize: 14,color: Colors.black))
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column
              (
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/teddy.webp"),fit: BoxFit.cover),border: Border.all(color: Colors.green,width: 2)),

                            ),
                            SizedBox(width: 3,),
                            Text("_mark_official_",style: TextStyle(color: Colors.black),),
                            SizedBox(width: 290,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,))
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/ss.jpg"),fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                         Icon(Icons.favorite_outline,size: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/chat.png",),height: 27,width: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/sendd.png",),height: 27,width: 27,),
                          SizedBox(width: 349,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border,size: 27,))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 390,),
                        child: Text("67,324 Likes"),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("_mark_official_ Styling ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Text("# something",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 350,top: 5),
                        child: Text("View all comments",style: TextStyle(color: Colors.grey),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/teddy.webp"),fit: BoxFit.cover),border: Border.all(color: Colors.green,width: 2)),

                            ),
                            SizedBox(width: 7,),

                            Text("Add a comment... ",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 200,),


                          ],
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/pp.jpg"),fit: BoxFit.cover),border: Border.all(color: Colors.pinkAccent,width: 2)),

                            ),

                            Text("_abdou_hou",style: TextStyle(color: Colors.black),),
                            SizedBox(width: 290,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,))
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/poat4.jpg"),fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Icon(Icons.favorite_outline,size: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/chat.png",),height: 27,width: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/sendd.png",),height: 27,width: 27,),
                          SizedBox(width: 349,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border,size: 27,))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 390,),
                        child: Text("3024 Likes"),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.only(right: 80,left: 10),
                            child: Text("Lorem ipsum is simply dummy test of the printing ",style: TextStyle(color: Colors.black),),
                          ),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 390),
                        child: Text("2 Days ago"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 350,top: 5),
                        child: Text("View all comments",style: TextStyle(color: Colors.grey),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/pp.jpg"),fit: BoxFit.cover),border: Border.all(color: Colors.pinkAccent,width: 2)),

                            ),
                            SizedBox(width: 7,),

                            Text("Add a comment... ",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 200,),


                          ],
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/conc.jpg"),fit: BoxFit.cover),border: Border.all(color: Colors.pinkAccent,width: 2)),

                            ),


                            Text("concepart_gallery",style: TextStyle(color: Colors.black),),
                            SizedBox(width: 250,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,))
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/gallery.jpg"),fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Icon(Icons.favorite_outline,size: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/chat.png",),height: 27,width: 27,),
                          SizedBox(width: 6,),
                          Image(image: AssetImage("assets/images/sendd.png",),height: 27,width: 27,),
                          SizedBox(width: 345,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border,size: 27,))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 390,),
                        child: Text("95,887 Likes"),
                      ),
                      Row(
                        children: [
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.only(right: 80,left: 10),
                            child: Text("concepart_gallery Follow for amazing art ",style: TextStyle(color: Colors.black),),
                          ),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Row(
                          children: [
                            Text("@conceptart_gallery....",style: TextStyle(color: Colors.blue),),
                            Icon(Icons.favorite,color: Colors.red,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 350,top: 5),
                        child: Text("View all comments",style: TextStyle(color: Colors.grey),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/conc.jpg"),fit: BoxFit.cover),border: Border.all(color: Colors.pinkAccent,width: 2)),

                            ),
                            SizedBox(width: 7,),

                            Text("Add a comment... ",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 200,),


                          ],
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),

          )

        ],
      ),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          width: 100,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                 IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        )

    ),
  );
  }

}