import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form",
      home:Scaffold(
        appBar: AppBar(
          title:Text("Flutter Form"),
          backgroundColor: Colors.blueAccent,
        ),

        body: Container(
          child: MyForm()
          
          ),
        
        
      ),
    );
  }
}


//----------------------------------------form------------------------------------------------------------------

class MyForm extends StatefulWidget {
  

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final GlobalKey<FormState> formKey=GlobalKey<FormState>();  
//----------------------------------UserName-----------------------------------------------------
  Widget userName(){
    return (
      TextFormField(

      decoration: InputDecoration(
        
        hintText: "Enter userName",
        prefix: Icon(Icons.person),
      
      ),
      maxLength: 20,
      
      validator: (uName){
        if(uName.isEmpty){
          return "please enter useName";
        }
       
      },

    )
    
    );
  }
//---------------------------------------------------------------------------------------------------------------------


Widget password(){
    return TextFormField(
      

      decoration: InputDecoration(
        
        hintText: "Enter Password",
        prefix: Icon(Icons.verified_user),
      
      ),
      maxLength: 10,
      keyboardType:TextInputType.number,
      obscureText: true,
      
     

    );
  }

  //----------------------------------------------------------------------------------------------------------

  Widget button(){
    return Center(
          child: RaisedButton(
        child: Text("Submit"),
        color: Colors.blue,
        onPressed: (){

          if(formKey.currentState.validate()){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Data Sending")));
          }

        },
      ),
    );
  }

  //----------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      
          child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userName(),
            password(),
             button(),

          ],
        ), 
      ),
    );

  }
}