import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: navigationn(),));

}
class navigationn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
    body: Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/003/226/126/small/empty-podium-with-line-gradient-neon-ring-on-background-vector.jpg"),fit: BoxFit.fill)),),

    drawer: Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white54),
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Fathimathul Afra"),
                accountEmail: Text("afra@gmail.com"),
            currentAccountPicture: GestureDetector(onTap: (){
              print("welcome");
            },
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/rose.png"),)),
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&w=1000&q=80"),fit: BoxFit.fill)),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/honey.jpg"),),
                CircleAvatar(backgroundImage: AssetImage("assets/images/fruit.png"),)

              ],
            ),


            ListTile(
              leading: Icon(Icons.home_filled),
              trailing: Icon(Icons.add),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text("Details"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.add),
              title: Text("settings"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              trailing: Icon(Icons.add),
              title: Text("Email"),
            )

          ],
        ),
      ),
    ),
    );
  }


}