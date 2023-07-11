import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: list_cust(),));
}
class list_cust extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List PAGE'),),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Anuu'),
            trailing: Icon(Icons.account_box_outlined),


          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Shiva'),
            trailing: Icon(Icons.account_box_outlined),


          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Megha'),
            trailing: Icon(Icons.account_box_outlined),


          ),
        )
      ])),
    );
  }

}