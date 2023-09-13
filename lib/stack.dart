import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:StackEx(),));
}
class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example"),),
      body:Center(
      child:Stack(
        children: [
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              fit: BoxFit.cover,
                image:NetworkImage("https://plus.unsplash.com/premium_photo-1677606179419-3a8719a19dea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
            )
            ),
          ),
          Positioned(
            left: 40,
            top: 50,
              child: Text("TEXA",
                style:TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            right: 40,
            bottom: 50,
            child: Text("EXP : 10-080-2023",
            style:TextStyle(
                color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
            ),
          const Positioned(
            left: 50,
              right: 50,
            top: 50,
            bottom: 50,
            child: Icon(Icons.comment_bank_rounded),
          )
        ],
      ),
      ),
    );
  }
}