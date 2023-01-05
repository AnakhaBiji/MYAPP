import 'package:flutter/material.dart';
import 'package:myapp/grid.builder.dart';
import 'package:myapp/gridview.dart';
import 'package:myapp/listpage.dart';
import 'package:myapp/listviewcustom.dart';

void main(){
  runApp(MaterialApp(
    home: Mytab(),
    debugShowCheckedModeBanner: false,),
  );
}
class Mytab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
    child:  Scaffold(
      appBar: AppBar(
        title: Text('My Tab Bar'),
        actions: const [
          Icon(Icons.search),
        ],
        bottom:  const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.group_add),
          ),
          Tab(text: 'Chats'),
          Tab(text: "Status"),
          Tab(text: 'Call',),
        ]
        ),
      ),
      body: TabBarView(children: [
        Center(child: Text('Community'),),
          Center(child: Text('Chats'),),
          listpage(),
          Gridviewww(),
      ],
      ),
    )
    );
  }

}