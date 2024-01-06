import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(title: Text('My App'),


        backgroundColor: Colors.red,

      ),
      backgroundColor: Colors.orange,
      body: Container(
        child: Center(
          child: Column(
            children: [

              Text('Thank You'),
              Text('Thanks For Buying')
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
