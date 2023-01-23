
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show EdgeInsets, TextSpan, TextStyle;
import 'package:flutter/gestures.dart';
import 'package:untitled1/sign%20up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'homescren.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp ( title: ' UOFK',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    debugShowCheckedModeBanner: false);
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
       appBar: AppBar(title:   Text("UOFK"),),
        body: Padding(
         padding:  EdgeInsets.all(20.0),
          child: Column(

            children:  <Widget>[
              Container(
                width: 200,
                height: 200,
                child: Image.network('https://cdn9.pngable.com/t/8/17/3/XpsRXBVrV1/user-login.jpg')
              ),
                  const Padding(
                    padding: EdgeInsets.all(16.0) ,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Emila",
                        border: OutlineInputBorder( )
                      ),
                    ),
                   ),
              const Padding(padding: EdgeInsets.all(20.0),
                child:TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Passward",
                      border: OutlineInputBorder( )
                  ),
                ) ,
              ),
              Padding(padding:EdgeInsets.all(10.1)  ,
                child: RaisedButton (
                textColor: Colors.white,
                color: Colors.greenAccent,
                child: Text('Sign In'),
                onPressed: ()  {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>home(),
                  ));
                                 }
                ),

              ),
            Padding(padding: EdgeInsets.all(10.0),
            child: RichText(text: TextSpan(
              text: ' Don`t have an  account',
              style:TextStyle(
                color: Colors.black ,
                fontSize: 15,
              ) ,
        children: <TextSpan> [
          TextSpan(
            text: 'sign up' ,
            style: TextStyle(
              color: Colors.blue ,
              fontSize: 15,
            ),
            recognizer: TapGestureRecognizer()..onTap =(){
               Navigator.push(context, MaterialPageRoute(
                   builder:(context)=>MyForm(),
               ));
              }
                   ),
                   ],
                    ),
                 ) ,
            )
            ],
              ),

          )
      );
        


  }
}

