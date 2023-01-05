import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggered_grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StaggeredGridView.count(crossAxisCount: 5,
      mainAxisSpacing: 2,
          crossAxisSpacing: 2,
      staggeredTiles: [StaggeredTile.count(3, 2),
        StaggeredTile.count(2, 3),
        StaggeredTile.count(3, 4),
        StaggeredTile.count(2, 5),
        StaggeredTile.count(3, 3),
        StaggeredTile.count(2, 1),
        StaggeredTile.count(3, 1),
        StaggeredTile.count(1, 2),
        StaggeredTile.count(2, 3),
        StaggeredTile.count(3, 4),


      ],

      children: [
        Customchild(iconData: Icons.add,bgcolor: Colors.pinkAccent,),
        Customchild(iconData: Icons.pageview,bgcolor: Colors.pink,),
        Customchild(iconData: Icons.phone_android,bgcolor: Colors.red,),
        Customchild(iconData: Icons.media_bluetooth_on_outlined,bgcolor: Colors.redAccent,),
        Customchild(iconData: Icons.widgets,bgcolor: Colors.orange,),
        Customchild(iconData: Icons.wifi,bgcolor: Colors.orangeAccent,),
        Customchild(iconData: Icons.bluetooth,bgcolor: Colors.yellow,),
        Customchild(iconData: Icons.map,bgcolor: Colors.yellowAccent),
        Customchild(iconData: Icons.mail_outline,bgcolor: Colors.blue,),
        Customchild(iconData: Icons.message_outlined,bgcolor: Colors.blueAccent),


      ],
      ),

    );
  }

}

class Customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData? iconData;
  Customchild({this.bgcolor,this.iconData}) ;
    @override
    Widget build(BuildContext context) {
      return Card(
        color: bgcolor,
        child: Icon(iconData, color: Colors.grey,),
      );
    }


}