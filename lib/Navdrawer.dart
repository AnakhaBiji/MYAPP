import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Navdrawer(),
    debugShowCheckedModeBanner: false,
  ));
}

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Anakha"),
                accountEmail:const Text("anakha2000@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap:() {
                    print("Current Profile ");
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WEmfJCME77ZGymWrlJkXRv5bWg9QQmQEzw&usqp=CAU"),
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRms4SSvT_4IGE0kKkrS1oMdBLjREB9wJCNQA&usqp=CAU"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQGB8YgZL2diEYrxuAzysQzkM78R7nqROU3g&usqp=CAU"),
                  )
                ],
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage("https://images.unsplash.com/photo-1631631480669-535cc43f2327?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFja2dyb3VuZCUyMGltYWdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                ),
              ),
              const ListTile(

                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
                // onTap:() {Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));
                // },
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dash Board"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
              )
            ],
          ),
        ),
      ),
    );
  }
}