import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'casoseual_slider.dart';
final List<String> imgList = [
  'assets/images/veg1.jpg',
  'assets/images/veg2.jpg',
  'assets/images/veg3.webp',
  'assets/images/veg4.webp'
];

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: farmerssapp(),));

}
class farmerssapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          backgroundColor: Colors.green,
          title: Row(
            children: [
              Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Padding(
                padding: const EdgeInsets.only(left: 160,right: 20),
                child: Icon(Icons.location_on_outlined),
              ),
              Text("Kochi",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ],
          ),
          floating: true,
          bottom: AppBar(backgroundColor: Colors.green,
            title: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: TextField(decoration: InputDecoration(hintText:"Search for vegetables and fruits" ,border: InputBorder.none,
                  icon: IconButton(onPressed: (){},icon: Icon(Icons.search),)),
              ),

            ),
          ),

        ),
        SliverList(delegate: SliverChildListDelegate(
        [SizedBox(
        height: 10,

        ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.greenAccent) ),
                  height: 25,
                  width: 120,
                  child: Center(child: Text("VEGETABLES",style: TextStyle(color: Colors.green,),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.greenAccent) ),
                  height: 25,
                  width: 120,
                  child: Center(child: Text("FRUITS",style: TextStyle(color: Colors.green,),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.greenAccent) ),
                  height: 25,
                  width: 120,
                  child: Center(child: Text("EXOTIC CUTS",style: TextStyle(color: Colors.green,),)),
                ),
              ),
            ],
          ),
    SizedBox(height: 10,),
    Container(
    child: CarouselSlider(
    options: CarouselOptions(
    aspectRatio: 2.0,
    enlargeCenterPage: true,
    enableInfiniteScroll: false,
    initialPage: 2,
    autoPlay: true,
    ),
      items: imgList
          .map((item) => Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        image: DecorationImage(fit:BoxFit.cover , image: AssetImage(item),
        ),
        ),

      ))
          .toList(),
    )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:  EdgeInsets.all(10),
            child: Container(
              padding:  EdgeInsets.all(6),
              decoration: BoxDecoration(

                border: Border.all(width: 1),

              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        Icon(Icons.timer),
                        Text("30 mins plicy")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Icon(Icons.camera_front_outlined),
                        Text("Traceability")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Icon(Icons.home_work),
                        Text("Local Sourrounding")
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),


        ]),
    ),
        SliverList(delegate: SliverChildListDelegate([
          const SizedBox(
            height: 10,
          ),
          const Padding(padding: EdgeInsets.all(8.0),
            child: Text("Shop by Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          veggrid()
        ]))
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }

}
class veggrid extends StatelessWidget{
  List<String>images =[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLJVoyjdL1XykUDuU50wGnM-zJVCprI2VY0w&usqp=CAU',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/watermelon-sliced-on-wooden-background-1024x575.jpg?w=1155&h=1528',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Y_fBEafNeXlwgTkou747s_o8T692pyIUQiGsvZ5YXFjn-V9FCT8FIcPqkYSal2SpHmY&usqp=CAU',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjen-t9JKPx5LZJRknlVSAlahGOa1ItIx-c2mvXJ93-_A3Ae024_MXtVeNarHEDq_YYyc&usqp=CAU'




  ];
  List<String> names=[
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charched",
    "Packed Flavour"
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}