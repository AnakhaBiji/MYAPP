import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid_Extend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview_Custom'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 60,
        children:List.generate(10, (index) {
              return const Card(
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 10),
                ),
              );
            },
          ),
      ),
    );
  }
}
