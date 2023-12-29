import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DashboardScreen extends StatefulWidget
{
  State<StatefulWidget> createState() =>_DashboardScreen();

}

class _DashboardScreen extends State<DashboardScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Home' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black),
),
  centerTitle: true,
      toolbarHeight: 70,

      actions: <Widget>[IconButton(onPressed: (){


        print('Notificartion');
      }, icon: Icon(Icons.notification_add))],

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(14.0), bottomLeft: Radius.circular(14.0)))),
      backgroundColor: Colors.blue,


      drawer: Drawer(
        backgroundColor: Colors.red,
      ),

      body: Container(
        child:
        Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )
        ,
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}