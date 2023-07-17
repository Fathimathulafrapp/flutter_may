import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      home: room(),));
}
class room extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 180,
          backgroundColor: Colors.cyan,
          leading:
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white,),
            onPressed: (){},
          ),
      actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.favorite_border, color: Colors.white,),
    onPressed: (){},),
      ],

          floating: true,
          flexibleSpace: ListView(
            children:  [
              SizedBox(height: 60,),
               Center(child: Text("Type your location",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
               decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(40.0)),
               child: Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: TextField(
                   decoration: InputDecoration(hintText: "Kakkanad ,Kochi",
                   border: InputBorder.none,
                   icon: IconButton(onPressed: (){},icon: const Icon(Icons.search),)),



                 ),
               ),
             )
            ],

          ),

          ),
        const SliverToBoxAdapter(child: SizedBox(height: 10.0,),),
        SliverToBoxAdapter(
          child: buildcategories(),
        ),
    SliverList(
    delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
    return _buildrooms(context,index);
    },
      childCount: 5,
    ),
    ),




        ]),
  );

  }

  buildcategories() {
    return Container(
      height: 100,child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 15.0,),
        category(
          icon: Icons.hotel,
          title: "Hotel",
          backgroundcolor: Colors.pink,


        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: category(
            icon: Icons.restaurant,
            title: "Restaurant",
            backgroundcolor: Colors.blue,


          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: category(
            icon: Icons.local_cafe,
            title: "Cafe",
            backgroundcolor: Colors.orange,


          ),
        ),




      ],
    ) ,
    );
  }


}
class category extends StatelessWidget{
  final Color? backgroundcolor;
  final IconData icon;
  final  String title;
  const category({
    Key? key,
     this.backgroundcolor,
    required this.icon,
    required this.title,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: const BorderRadius.all(Radius.circular(5.0))
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            const SizedBox(height: 5.0,),
            Text(title,style: const TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );



  }

}

Widget _buildrooms(BuildContext context, int index) {
  final List rooms=[
    {
      "image": "assets/images/room1.jpg",
      "title": "Awesome room near Kakkanad"
    },
    {
      "image": "assets/images/rooms2.jpg",
      "title": "Peaceful Room"
    },
    {
      "image": "assets/images/rooms3.webp",
      "title": "Beautiful Room"
    },
    {
      "image": "assets/images/room4.webp",
      "title": "Vintage room near Kochi"
    },
    {
      "image":"assets/images/room5.jpg",
      "title":"Beuti Room attached pool"
    }

  ];
 var room=rooms[index % rooms.length];
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.greenAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(room['image']),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(Icons.star, color: Colors.grey.shade800,size: 20.0,),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: Icon(Icons.star_border, color: Colors.white,size: 24.0,),

                  ),
                  Positioned(
                    bottom: 20.0,
                    right: 30.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.green,
                      child: const Text("\$40"),
                    ),
                  ),

                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(room['title'], style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 5.0,),
                    const Text("Kakkanad,Kochi"),
                    const SizedBox(height: 10.0,),
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        SizedBox(width: 5.0,),
                        Text("(220 reviews)", style: TextStyle(color: Colors.black),),
                        


                      ],

                    ),
                  ],
                ),
              ),

            ],
          ),

        ),
      ),
    ),
  );
}