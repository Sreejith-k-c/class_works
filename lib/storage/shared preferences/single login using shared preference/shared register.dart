import 'package:class_works/login.dart';
import 'package:class_works/stateful%20login%20with%20validation.dart';
import 'package:class_works/storage/shared%20preferences/single%20login%20using%20shared%20preference/shared%20home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: RegisterShared(),));
}

class RegisterShared extends StatefulWidget {
  const RegisterShared({super.key});

  @override
  State<RegisterShared> createState() => _RegisterSharedState();
}

class _RegisterSharedState extends State<RegisterShared> {
  final name=TextEditingController();
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("REGISTRATION"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:'Name'
                ),
                controller:name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:'Email'
                ),
                controller:email,
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                ),
                controller: pwd,
              ),
            ),
            ElevatedButton(onPressed: () async{
              //shared preference instance creation
              preferences=await SharedPreferences.getInstance();
              String username=email.text;
              String pass=pwd.text;

              if(username != ""&& pass !=""){
                preferences.setString('uname', username);
                preferences.setString('pword', pass);
                //Set the user logged in
                preferences.setBool('userlogin', false);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:(context)=>SharedHome()));
              }
              name.text="";
              email.text="";
              pwd.text="";
            },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
  void storedata() async {
    String personname=name.text;
    String mailid=email.text;
    String password=pwd.text;

    preferences = await SharedPreferences.getInstance()!;
    preferences.setString('name', personname);
    preferences.setString('email',mailid );
    preferences.setString('pwd', password);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
  }
}