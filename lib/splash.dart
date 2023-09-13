import 'package:flutter/material.dart';

void main(){  // to execute the program main is mandatory
  //runApp attach widget tree to the UI
  runApp(MaterialApp(home:MysplashPage(),));  //MaterialApp
}

class MysplashPage extends StatelessWidget{   // this page does not undego any state changes
  @override
  Widget build(BuildContext context){  //locate widget position in widget tree
    // the entire screen
    return Scaffold(
        appBar:AppBar(title:Text("My Splash Page"))
    );
  }
}