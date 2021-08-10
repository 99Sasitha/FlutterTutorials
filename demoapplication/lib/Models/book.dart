import 'package:cloud_firestore/cloud_firestore.dart';

class Book {

  String bookName="";
  String authorName="";

  DocumentReference documentReference;

  Book({required this.bookName,required this.authorName});

  Book.fromMap(Map<String,dynamic> map, {required this.documentReference}){

    bookName=map["bookName"];
    authorName=map["authorName"];

  }

  Book.fromSnapshot(DocumentSnapshot snapshot)
        :this.fromMap(snapshot.data, documentReference:snapshot.reference);

  tojson(){
    return{"bookName":bookName,"authorName":authorName};
  }
  
}

