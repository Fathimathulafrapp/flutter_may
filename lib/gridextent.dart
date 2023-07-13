import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:gridextent() ,));

}
class gridextent extends StatefulWidget{
  @override
  State<gridextent> createState() => _gridextentState();
}

class _gridextentState extends State<gridextent> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.extent(maxCrossAxisExtent: 90,children: List.generate(30, (index){
      return Card(color: Colors.yellow,
        child: Text("Hiii"),
      );
  },),)
  );
  }
}