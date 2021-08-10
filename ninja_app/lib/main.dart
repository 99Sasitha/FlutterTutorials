import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ninja App",
      home: NinjaHome(),
    );
  }
}

class NinjaHome extends StatefulWidget {
  const NinjaHome({ Key? key }) : super(key: key);

  @override
  _NinjaHomeState createState() => _NinjaHomeState();
}

class _NinjaHomeState extends State<NinjaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("NinjaApp",
        style: TextStyle(fontSize: 25),
        
        ),
        centerTitle: true, 
       elevation:0.0,
       leading: IconButton(
         
         focusColor: Colors.yellow,
         highlightColor: Colors.red,
         hoverColor: Colors.black,
         onPressed: (){

         }, 
         icon: Icon(Icons.menu)),
        flexibleSpace: Image.network("https://th.bing.com/th/id/R.6cb9dd2546252b60f2c023fed4b1d804?rik=tyCgVwtfD4Pnqw&riu=http%3a%2f%2f4.bp.blogspot.com%2f-bxG9uN6_KqU%2fVZ48PfCDFnI%2fAAAAAAAAJXQ%2f9AqQj_Zq1KI%2fs1600%2f2318068-ninja_2012_10_02_06_26_19_60.png&ehk=zL7UzY8C29QBjyilfMwQ8r7MGBADbwi9R4rTBtRTZY4%3d&risl=&pid=ImgRaw&r=0",fit:BoxFit.cover,), 
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("image/cv.jpg"),
                radius:50,
              ),
            ),

            Divider(height: 30,color: Colors.grey,),
            SizedBox(height: 20,),
            
        
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 300, 10),
              child: Text("Name: ",style: TextStyle(fontSize: 20,color: Colors.white),),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                color: Colors.green,
              ),
                  ),


              SizedBox(height: 20,),
                  Container(
              padding: EdgeInsets.fromLTRB(10, 10, 322, 10),
              child: Text("Age: ",style: TextStyle(fontSize: 20,color: Colors.white),),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                color: Colors.green,
              ),
                  ),


              SizedBox(height: 20,),
                  Container(
              padding: EdgeInsets.fromLTRB(10, 10, 322, 10),
              child: Text("Mail: ",style: TextStyle(fontSize: 20,color: Colors.white),),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                color: Colors.green,
              ),
                  ),
          ],),
        ),

      
    );
  }
}