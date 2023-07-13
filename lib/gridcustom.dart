import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: gridcustom(),));
}
class gridcustom extends StatelessWidget{
  var image=[('assets/images/honey.jpg'),("assets/images/fruit.png"),("assets/images/rose.png"),("assets/images/strawberry.jpg")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20), childrenDelegate: SliverChildBuilderDelegate((context,index)
      {
        return Card(
          child:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Image.asset(image[index],height: 60,width: 70,),
            ],
          )) ,
        );
      },
      childCount: image.length,
      ),
    ));
  }

}