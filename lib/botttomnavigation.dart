import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/about.dart';
import 'package:flutter_may/chats.dart';
import 'package:flutter_may/expand.dart';
import 'package:flutter_may/grid.dart';

void main(){
  runApp(MaterialApp(home: bottom_nav(),));
}
class bottom_nav extends StatefulWidget{

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int selectedindex=0;
  List bodys=[
   grid(),
   about(),
    expandd(),
    chats(),

  ];
  void onitemselected(int index){
  setState(() {
    selectedindex=index;
  });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Bottom Navigation")
    ),
    bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blue,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
     BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "account"),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
    ],
    currentIndex: selectedindex,
    onTap: onitemselected,),
    body: bodys.elementAt(selectedindex),
  );
  }
}