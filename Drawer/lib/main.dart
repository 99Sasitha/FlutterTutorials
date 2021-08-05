import 'package:flutter/material.dart';

void main(){

  runApp(myApp());
}

class myApp extends StatelessWidget {

  final caption="My Drawer";
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: caption,
      home:HomePage(),

    );
  }
}


class HomePage extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),

      ),
      body: Center(
        child:Text("Hellow Welcom to My App"),
      ),
      drawer: Drawer(
        
        
        child:ListView(
          children: [
            DrawerHeader(
              child: Text("MyApp",style:TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold)),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
              
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),

      ),    );
  }
}