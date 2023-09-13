import 'package:class_works/assignment/login%20assignment.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(home: open(),));
}

class open extends StatefulWidget {
  @override
  State<open> createState() => _openState();
}

class _openState extends State<open> {
  var formkey=GlobalKey<FormState>();
  bool passvisibility=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login with Validation'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/icons/butterfly.png",
              height: 100,
              width: 100,
            ),
            const Text(
              "My Login Page",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginassign()));
            },
                child: Text("Login")),
            TextButton(
                onPressed: () {}, child: Text("Do you have an account? Sign Up"))
          ],
        ),
      ),
    );
  }
}