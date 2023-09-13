import 'dart:async';

import 'package:flutter/material.dart';
import 'package:class_works/login.dart';

void main(){
  runApp(MaterialApp(home:Splash3(),));
}

class Splash3 extends StatefulWidget{  // Splash3 is initially immutable
  @override
  State<StatefulWidget> createState()=> _Splash3State(); // createState() will create a mutable state for Splash3

}

class _Splash3State extends State<Splash3> {
  @override
  void initState(){   //What will happen when the app or page is first launched
    Timer(Duration(seconds:5),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>LoginPage()));
  });  //Timer
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body:Center(
    child:Image.asset("assets/images/uzumaki.webp"),
    ),
    );
  }
}