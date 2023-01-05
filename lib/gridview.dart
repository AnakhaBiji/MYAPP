import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewww extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Grid View"),),
     body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
       crossAxisSpacing: 20,
       mainAxisSpacing: 20,

     ),
     children: const[Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
       Image(image: AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
     ],
     ) ,
   );
  }

}