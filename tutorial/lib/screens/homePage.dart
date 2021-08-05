

import 'package:flutter/material.dart';
import 'package:tutorial/screens/secondScreen.dart';

class app extends StatefulWidget {
  

  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {

  int count=0;

  void increment(){
    setState(() {
      count=count+1;
    print(count);
  });
      
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text("SasiApp"),

      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Button Times",style:TextStyle(color: Colors.red,fontSize: 30.0)),
            Text("$count",style:Theme.of(context).textTheme.display1,),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (_){
          //     return secondScreen();

          
          //   }));
          Navigator.of(context).pushNamed("/listPage");
        },

      ),

    );
  }
}
