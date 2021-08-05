import 'package:flutter/material.dart';
import 'package:tutorial/main.dart';


class list extends StatefulWidget {
  

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
    TextEditingController user=TextEditingController();

    final GlobalKey<FormState> formKey=GlobalKey<FormState>();

    String a;


    Widget UserName(){
        return(

          TextFormField(

            decoration: InputDecoration(
              hintText: "UserName",
              hintStyle: TextStyle(color: Colors.brown),
              prefixIcon: Icon(Icons.verified_user),

            ),
            maxLength: 50,
            controller: user,
            validator: (sasi){
              if(sasi.isEmpty){
                return "This is Required";
              }

              return null;
            },

            onSaved: (text){

              a=text;

            },
            

          )
        );
    }

    //-------------------------------------------------------------------------------------------

    Widget Password(){

      return(
        TextFormField(
          decoration:InputDecoration(
            prefixIcon: Icon(Icons.high_quality),
            hintText: "password",
            
          ),
          
          obscureText: true,
         

        )
      );

    }

    //-------------------------------Button-----------------------------------------------

    Widget Button(){
      return(
        IconButton(
          icon: Icon(Icons.arrow_right),
          color: Colors.green,
          hoverColor: Colors.green,
          iconSize: 100.0,
          
          
          
           onPressed: (){
              formKey.currentState.validate();
            
            

           })


      );
    }
 

  @override 
  Widget build(BuildContext context) {



   

    
    return MaterialApp(
      home: Scaffold(
              appBar: AppBar(

          title: Text("List View"),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key:formKey,
              child: Container(
                child: Column(
                  children: [
                    UserName(),
                    Password(),
                    Button(),
                    
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
      
    );
  }
}