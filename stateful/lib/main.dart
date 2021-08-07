import 'package:flutter/material.dart';

void main ()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Stateless Widget",
      home:Scaffold(
        appBar: AppBar(
          title: Center(child: Text("StateFul")),
      ),

      body: MyName(),

    ),
    );
}
}

//------------------------------------------------------------------------------------------------------------------

class MyName extends StatefulWidget {
  const MyName({ Key? key }) : super(key: key);

  @override
  _MyNameState createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {

  

  @override
  Widget build(BuildContext context) {

String username;
    
    return Container(

      padding: EdgeInsets.all(17),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              prefixIcon: Icon(Icons.person,color:Colors.red),
              

            ),
            maxLength: 20,

            onChanged: (String name){
                setState((){

                  print(name);

                  username=name;
                });
            },

          ),

         Text("Hi " + username),
          
        ],
      ),

      
    );
  }
}