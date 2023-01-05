import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Stackdemo.dart';
import 'package:myapp/Staggeredgrid.dart';
import 'package:myapp/grid%20with%20stack%20ui.dart';
import 'package:myapp/grid.builder.dart';
import 'package:myapp/grid_extent.dart';
import 'package:myapp/gridview.count.dart';
import 'package:myapp/gridview.custom.dart';
import 'package:myapp/gridview.dart';
import 'package:myapp/home.dart';
import 'package:myapp/listviewcustom.dart';
import 'package:myapp/loginusing%20validation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.pink),
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Staggered_grid()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ///set background color for container
        //color: Colors.black,
        ///set background image for container
        //  decoration: const BoxDecoration(
        //    image: DecorationImage(
        //      fit: BoxFit.cover,
        //    image: NetworkImage(
        //      "https://images.pexels.com/photos/604684/pexels-photo-604684.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
        ///set linear background for container
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
                colors: [
              Colors.purple,
              Colors.purpleAccent,
              Colors.pink,
              Colors.pinkAccent
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                  image:
                      AssetImage("assets/icons/Baby-Horse-Christmas-icon.png")),
              Text(
                "My Pet Shop",
                style: TextStyle(fontSize: 40, color: Colors.deepOrange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
