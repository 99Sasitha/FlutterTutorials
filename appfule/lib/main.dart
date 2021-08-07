import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FuelApp",
      home: fuelApp(),
    );
  }
}

class fuelApp extends StatefulWidget {
  const fuelApp({ Key? key }) : super(key: key);

  @override
  _fuelAppState createState() => _fuelAppState();
}

class _fuelAppState extends State<fuelApp> {

   final currencyTypes=["LKR","Dollor","Pounds"];
   var valueChoose="Select";
   String resultText="";

   TextEditingController amount=TextEditingController();
   TextEditingController PerUnit=TextEditingController();
   TextEditingController dist=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("FuelApp",
        style: TextStyle(
          color: Colors.white,
          ),) ,
        leading: Icon(Icons.directions_car),
        
        ),

        body:Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              distancePerUnit(),
              distance(),
              price(),
              button(),

              Text(resultText),
              
             

            ],
          ),
        )
    );
  }
  Widget distance(){
  return 
     TextField(
      decoration: InputDecoration(
        hintText: "Distance",
        prefixIcon: Icon(Icons.social_distance_sharp)
      ),
      keyboardType: TextInputType.number,
     controller: dist,
  );
}

Widget distancePerUnit(){
  return 
     TextField(
      decoration: InputDecoration(
        hintText: "Distance per Unit ",
        prefixIcon: Icon(Icons.ad_units)
        
      ),
      keyboardType: TextInputType.number,
     controller: PerUnit,
  );
}

Widget price(){
  return 
     TextField(
      decoration: InputDecoration(
        hintText: "Price",
        prefixIcon: Icon(Icons.money),),
      keyboardType: TextInputType.number,
     controller:amount,
  );
}

Widget button(){
  return RaisedButton(
    child: Text("Calculate"),
    color: Colors.blue,
    hoverColor: Colors.green,
    onPressed: (){
      setState(() {
        resultText=calculation();
      });
    }
    
    );

}
String calculation(){
  double priceControl=double.parse(amount.text);
  double distanceControl=double.parse(dist.text);
  double unitControl=double.parse(PerUnit.text);

  double sum=(priceControl/unitControl)*priceControl;
  String total="Totla Cost = " + sum.toString();

  return total;

}


  
}


