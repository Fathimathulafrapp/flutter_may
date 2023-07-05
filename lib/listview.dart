import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listpage() ,));

}
class listpage extends StatefulWidget{
  @override
  State<listpage> createState() => _listpageState();
}

class _listpageState extends State<listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text('list page'),),
    body: ListView(
      children: [
        Card(color: Colors.green,
          child: ListTile(
            
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            title: Text('ananya'),
            subtitle: Text('9876545678'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.greenAccent,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('tarun'),
            subtitle: Text('8960570559'),
            trailing: Icon(Icons.phone),
          ),
        ),
        Card(color: Colors.lightGreen,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('sam'),
            subtitle: Text('789654567'),
            trailing: Icon(Icons.phone),
          ),
        )
      ],

    ),);
  }
}