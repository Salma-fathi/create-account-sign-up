import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled1/homescren.dart';

 class   MyForm extends StatefulWidget {


   @override
   _MyFormState  createState()=> _MyFormState();
 }

 class _MyFormState extends State<MyForm> {
   final _formkey =GlobalKey<_MyFormState>();
   @override
   Widget build(BuildContext context) {
     return SafeArea(
         child: Scaffold(

          body:ListView(
            padding: EdgeInsets.all(20),
            children: [
              Form(
                key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Container(
                          width: 200,
                          height: 200,
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL8RHWdAOVOf-86dfAQ9io0Z148uW9N7Zp5w&usqp=CAU')
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.person),
                              hintText:'Enter your Name',
                              labelText: 'Name'
                            ),
                        ),
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.phone),
                              hintText:'Enter a phone nember',
                              labelText: "phone"
                          ),
                        ),
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.calendar_month),
                              hintText:'Enter your date of birth',
                              labelText: 'Date birth'
                          ),
                        ),
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.transgender_sharp),
                              hintText:'Enter  your gender',
                              labelText: "gender",

                          ),

                        ),
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {  }, icon: Icon(Icons.visibility),
                              ),
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.password),
                              hintText:'Enter a passward',
                              labelText: "Passward"
                          ),
                        ),
                      ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: TextFormField(

                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                 onPressed: () {  }, icon: Icon(Icons.visibility),
                            ),
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.password_sharp),
                              hintText:'Enter confirm passward',
                              labelText: "Confirm passward"
                              
                          ),

                        ),
                      ),

                      //come back
                      //
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),

                          child: RaisedButton(
                            color: Colors.indigo, onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => home(),
                              ));
                          },
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Register'),
                            ),
                          ),
                        ),
                      )


                    ],


                  ))
            ],
          ),

         ),
     );
   }
 }

