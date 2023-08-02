import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: reorderlist()));
}
class reorderlist extends StatefulWidget{
  @override
  State<reorderlist> createState() => _reorderlistState();
}

class _reorderlistState extends State<reorderlist> {
  final  items  =[
    'A',
    'B',
    'C','D',
    'E',
    'F'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ReorderableListView( children: [
        for(final item in items)
          ListTile(
            key: ValueKey(item),
            title: Text(item),
          ),

      ],

        onReorder: ( oldIndex,  newIndex) {
        setState(() {
          if(newIndex> oldIndex)
            newIndex--;

          final  item =items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });

      },


      ),
    );
  }
}