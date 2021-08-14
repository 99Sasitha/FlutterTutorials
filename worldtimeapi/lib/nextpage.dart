import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart';
import 'package:worldtimeapi/services/world_time.dart';


// ignore: camel_case_types
class netapi extends StatefulWidget {
  const netapi({ Key? key }) : super(key: key);

  @override
  _netapiState createState() => _netapiState();
}

// ignore: camel_case_types
class _netapiState extends State<netapi> {


  String time="loading";

  //---------------------------------------------------------------------------------------------------------------
  void setupWorldTime()async {

    WorldTime instance=WorldTime(location:"Berlin",flag: "germany.png" ,url:"Europe/Berin",time:"time");
    await instance.getTime();
    print(instance.time);
    setState(() {
      time=instance.time;
    });
  }  

    @override
  void initState() {
    
    super.initState();
    setupWorldTime();

     
  }



//**************************************************************************************************** */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Api"),
        
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Text(time) ,
        ),
    );
  }
}