import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridView_Count extends StatelessWidget {
  var images = [
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
    "assets/icons/Baby-Horse-Christmas-icon.png",
  ];
  var colors = [
    Colors.blue,
    Colors.grey,
    Colors.cyanAccent,
    Colors.pinkAccent,
    Colors.pink,
    Colors.red,
    Colors.redAccent,
    Colors.white70,
    Colors.yellow,
    Colors.orange,
    Colors.blue,
    Colors.grey,
    Colors.cyanAccent,
    Colors.pinkAccent,
    Colors.pink,
    Colors.red,
    Colors.redAccent,
    Colors.white70,
    Colors.yellow,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview.count"),),
      body: GridView.count(crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 5,
        children: List.generate(20, (index) {
          return Card(
            color: colors[index],
            child: Image(image: AssetImage(images[index]),
            ),

          );
        }
        ),
      ),
    );
  }

}