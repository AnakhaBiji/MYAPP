import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_with_Stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview()'),),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: Stack(
                children:  [
                  Card(
                    child: Image.asset("assets/icons/Baby-Horse-Christmas-icon.png")
                  ),
                ],
              ),
            );
          },
          childCount: 5
          )
      ),
    );
  }
  
}