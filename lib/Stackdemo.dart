import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mystack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child:Stack(
              children: [
                    Positioned(
                      width: 400,
                      height: 400,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),

                    Positioned(
                      width: 300,
                      height: 300,
                      child: Container(
                        width: 90,
                        height: 90,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      width: 200,
                      height: 200,
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
            ),
                    ),
          ],
        ),
      ),
    );
  }

}