


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'ui/onBoarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen()
    );
  }

}

class SplashScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context   ) {


    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the new layout using Navigator
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });

    return Scaffold(
        body: Center(
          child: Container(

              width: 100,

              child: Row(

                  children: [
                    Image.asset('assets/images/logo.png',
                      width: 40,
                      height: 40,),
                    Padding(padding: EdgeInsets.all(4.0)),
                    Text('Bazar' ,style: TextStyle(color: Colors.white ,fontSize: 18 ,fontWeight: FontWeight.bold),)
                  ]



              )
          ),


        ),
        backgroundColor:Colors.deepPurple

    );

  }



}





