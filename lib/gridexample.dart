import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: grid_view(),));
}
class grid_view extends StatelessWidget{
  var color=[Colors.lightGreen,Colors.grey,Colors.brown,Colors.red,Colors.grey,Colors.greenAccent,Colors.purpleAccent,Colors.brown,Colors.greenAccent,Colors.pinkAccent,Colors.white54,Colors.greenAccent];
  var images=[("assets/images/home.png"),("assets/images/email.png"),("assets/images/alarm.png"),("assets/images/wallet.png"),("assets/images/backup.png"),("assets/images/book.png"),("assets/images/camera.png"),("assets/images/person.png"),("assets/images/print.png"),("assets/images/phone.png"),("assets/images/notes.png"),("assets/images/music.png")];
  var text=["Home","Email",'Alaram','Wallet','Backup','Books','Camera','Person','Print','Phone','Notes','Music'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View'),),

      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount:images.length,
          itemBuilder: ((context,index){

            return Card( color: (color[index]),
              child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [
              Image.asset(images[index],height: 60,width: 70,),

                  Text(text[index]),


              ],

            )),
            );}
          )),

    );
  }

}