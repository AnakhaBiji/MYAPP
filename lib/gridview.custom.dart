import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview_custom'),),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: ListView(
                children: [
                  Text("GridView_Custom"),
                  SizedBox(height: 20,width: 20,),
                  Icon(Icons.access_time_outlined,
                  color: Colors.orange,),

                ],
              ),
            );
          },
            childCount: 16
          ),
      ),
    );
  }

}