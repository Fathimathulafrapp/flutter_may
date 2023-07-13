import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main()
{
  runApp(MaterialApp(home: staggeredgrid(),));
}
class staggeredgrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: StaggeredGridView.count(crossAxisCount: 4,
      staggeredTiles: [
        StaggeredTile.count(2, 2),
        StaggeredTile.count(1, 3),
        StaggeredTile.count(2, 1),
        StaggeredTile.count(3, 1),
        StaggeredTile.count(1, 4),
        StaggeredTile.count(4, 2),
        StaggeredTile.count(1, 3),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(3, 1),
        StaggeredTile.count(2, 3)
      ],
      children: [
      Listitems(Colors.lightBlueAccent),
        Listitems(Colors.yellowAccent),
        Listitems(Colors.redAccent),
        Listitems(Colors.greenAccent),
        Listitems(Colors.black),Listitems(Colors.brown),
        Listitems(Colors.green),
        Listitems(Colors.pinkAccent),
        Listitems(Colors.purple),


      ],
    ),
  );
  }

}

class Listitems  extends StatelessWidget{

  late final Color backgroundColor;
  Listitems(this.backgroundColor);
  @override
  Widget build(BuildContext context) {

 return Card (
   color: backgroundColor,

 );
  }
}