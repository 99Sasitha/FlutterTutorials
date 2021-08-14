import 'package:flutter/material.dart';
import 'package:worldtimeapi/nextpage.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "WorldTimeApi",
       home: timeapp(),
       routes: {
         "/nextpage":(context)=>netapi()
       },
    );
  }
}

// ignore: camel_case_types
class timeapp extends StatefulWidget {
  const timeapp({ Key? key }) : super(key: key);

  @override
  _timeappState createState() => _timeappState();
}

// ignore: camel_case_types
class _timeappState extends State<timeapp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("World Time Api"),
        centerTitle: true,

      ) ,

      body: Column(
        children: [
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed:(){

              Navigator.of(context).pushNamed("/nextpage");

            },
            child: Text("click Me"),
            color: Colors.lime,
            autofocus: true,
            elevation: 0,
          
                ),
        ],
      ),
    );
}
}