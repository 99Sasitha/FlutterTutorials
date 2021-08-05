import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Network Request",
      home:HomeNetwork(),
    );
  }
}

class HomeNetwork extends StatefulWidget {
  

  @override
  _HomeNetworkState createState() => _HomeNetworkState();
}

class _HomeNetworkState extends State<HomeNetwork> {

  var developers=[];
  final customFont=const TextStyle(fontSize: 20.0);

  _loadApiData() async{

   String testURL="https://api.github.com/users";
   http.Response response=await http.get(Uri.parse(testURL));


      setState((){

        // TODO: implement setState
    developers=jsonDecode(response.body);
      }); 
  }


  void initState(){
    super.initState();
    _loadApiData();
  }


  Widget list(int i){
    return ListTile(
      title: Text("${developers[i]["login"]}",style: customFont,),
    );
  }



 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("network API Call"),

      ),

      body: ListView.builder(
        padding:EdgeInsets.all(15.0),
        itemCount:developers.length ,
        itemBuilder: (BuildContext context , int position){
          return list(position); 
        }
      ),
    );
  }
}

