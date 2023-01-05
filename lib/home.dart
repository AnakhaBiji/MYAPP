import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const  Center(child: Text("Login Page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold))),
          Padding(padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "UserName",
                labelText: "USERNAME",
                prefixIcon: Icon(Icons.account_box_sharp),
                border: OutlineInputBorder()),
          ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "PASSWORD",
                  //prefixIcon: Icon(Icons.visibility_off),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: ElevatedButton(onPressed: (){Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );}, child: Text("Login")),
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: Text("Not a user? Register here"))
        ]
      ),
    );
  }

}