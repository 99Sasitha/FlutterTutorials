import 'package:flutter/material.dart';
import 'package:square_in_app_payments/models.dart';
import 'package:square_in_app_payments/in_app_payments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
//--------------------------------------------------------------methana increment function aka wens kara paymentCreadit Card bawata--------------------------
  void _paywithcreditCard() {

    InAppPayments.setSquareApplicationId("sq0idb-7QJUlFMG--o7DJoKomr8hA");
    
    InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: _success, 
      onCardEntryCancel: entryCancel
      ); 
  }

//-----Success Method aka------------------------------------------------------
  void _success(CardDetails cardDetails){

    InAppPayments.completeCardEntry(
      
      onCardEntryComplete: _cardEntryComplete
      );
  }

  void _cardEntryComplete(){

  }

//----cancel Method aka------------------------------------------------------
  void entryCancel(){
    print("Cancel");


  }


//------------------------------------------------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //-------------------------------------------------------------------methan wenas kara onpressed aka------------------------------------
        onPressed: _paywithcreditCard,
        tooltip: 'PayHere',
        child: Icon(Icons.payment),
      ), 
    );
  }
}
