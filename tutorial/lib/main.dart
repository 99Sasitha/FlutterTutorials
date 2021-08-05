import 'package:flutter/material.dart';
import 'package:tutorial/screens/homePage.dart';
import 'package:tutorial/screens/secondScreen.dart';

void main(){

  runApp(sasi());

}

class sasi extends  StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: app(),

      routes: <String,WidgetBuilder>{
        "/listPage":(context)=>list(),
      },
    );
  }
}




