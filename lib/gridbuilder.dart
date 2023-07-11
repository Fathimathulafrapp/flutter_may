import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: grid_builder(),));
}
class grid_builder extends StatelessWidget{
  var color=["cyan","green","yellow","red"];
  var colors=[800,700,600,500];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount:color.length
          ,itemBuilder: ((context,index){

        return Card( color: Colors.red[colors[index]],

          child: ListTile(


            title: Text(color[index]),
          ),

        );
      }
      )),
    );
  }

}