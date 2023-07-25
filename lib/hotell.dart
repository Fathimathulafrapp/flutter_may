import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home:
  hotels(),));
}
class hotels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              foregroundDecoration: const BoxDecoration(
                  color: Colors.black26
              ),
              height: 400,
              child:Image(image: AssetImage("assets/images/room5.jpg"),fit: BoxFit.cover,)
          ),
          SingleChildScrollView(
            padding:  EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 250),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    "Crowne Plaza \nKochi, Kerala",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                     SizedBox(width: 18.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 9.0,
                        horizontal: 17.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(18.0)),
                      child:  Text(
                        "8.4/85 reviews",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(right: 10,left: 300),
                      child: IconButton(
                        color: Colors.white,
                        icon:  Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Container(
                  padding:  EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(Icons.star,
                                      color: Colors.yellow,),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,color: Colors.grey,

                                    ),
                                  ],
                                ),


                                   Icon(Icons.location_on, size: 16.0, color: Colors.grey,),
                                      Text( "8 km to LuluMall",

                                 style: TextStyle(color: Colors.grey, fontSize: 14.0),)],
                                   ),
                            ),

                          Column(
                            children: [
                              Text("\$ 200", style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),),
                              Text("/per night",style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey
                              ),)
                            ],
                          )
                        ],
                      ),
                       SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            primary : Colors.purple,
                            padding:  EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child:  Text("Book Now", style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                          ),),

                          onPressed: () {},
                        ),
                      ),
                       SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style:  TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0
                      ),),
                       SizedBox(height: 10.0),
                       Text(
                        "Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional "
                            "and leisure travelers from across the world. It is placed amidst exotic"
                            " surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.",
                        textAlign: TextAlign.justify, style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0
                      ),),
                       SizedBox(height: 10.0),
                       Text(
                        "Crowne Plaza Kochi, Kerala", textAlign: TextAlign.justify, style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title:  Text("DETAIL",style: TextStyle(
                  fontSize: 16.0,

              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items:  [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}