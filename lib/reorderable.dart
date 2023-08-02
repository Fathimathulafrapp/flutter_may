import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: reorderableList(),));
}
class reorderableList extends StatefulWidget{
  @override
  State<reorderableList> createState() => _reorderableListState();
}

class _reorderableListState extends State<reorderableList> {
  final List<int> items =List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ReorderableListView(children: List.generate(items.length, (index) => ListTile(
        key: Key('$index'),
        tileColor: items[index].isOdd ? Colors.yellow : Colors.pinkAccent,
        title: Text('Item ${items[index]}'),

      )), onReorder: (int oldIndex,int newIndex){
        setState(() {
          if(oldIndex < newIndex){
            newIndex = -1;
          }
          final int item =items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      }
      ),
    );


  }
}