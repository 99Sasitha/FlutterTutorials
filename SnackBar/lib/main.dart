import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snackbar",
      home:Scaffold(
        appBar: AppBar(
          title: Text("SnackBar"),
          leading: IconButton(
            icon: Icon(Icons.home), 
            onPressed: (){}
            ),
          
        ),
        body: MySnackBar(),
      ),
    );
  }
}



class MySnackBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.yellow,
        child: Text("Click Me"),
        onPressed: (){
          final snackBar=SnackBar(

            backgroundColor: Colors.red,
            content: Text("Msg send"),
            action: SnackBarAction(
              label: "Stop",
              onPressed: (){},
            ),

        
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        
        ),
    );
  }
}