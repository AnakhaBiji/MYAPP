import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_with_Builder extends StatelessWidget{
  var images=[
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid builder"),),
      body: GridView.builder
        (gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder:(context,index){
          return Card(
            child: Image.asset(images[index]),
          );
          },
        itemCount: images.length,
          ),
    );
  }

}