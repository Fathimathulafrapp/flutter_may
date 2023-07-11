import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: list_custom(),));
}
class list_custom extends StatelessWidget{
  var data =['anu','karthi','appu','shiva'];
  var colors=[800,700,600,500];
  var images=["assets/images/img.png","assets/images/img_1.png","assets/images/ll.jpg","assets/images/pic1.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List PAGE'),),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(color: Colors.yellow[colors[index]],
          child: ListTile(
            leading:CircleAvatar(child: Image(image: AssetImage(images[index]),),),
            title: Text(data[index]),
          ),

        );
      },childCount: data.length
      )),
    );
  }

}