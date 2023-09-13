import 'package:class_works/storage/shared%20preferences/single%20login%20using%20shared%20preference/shared%20home.dart';
import 'package:flutter/material.dart';
import 'package:class_works/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(home: LoginPage(),));
}
  class LoginPage extends StatelessWidget{

  String uname="admin";
  String pwd="abc123";

  TextEditingController usercontroller=TextEditingController();
  TextEditingController passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: AppBar(
  title:const Text("Login Page"),
  ),
  body: Center(
  child:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children:[
   Padding(
  padding:const EdgeInsets.all(20.0),
  child:TextField(
  decoration:InputDecoration(
  border:OutlineInputBorder(),
  prefixIcon: Icon(Icons.people),
  hintText: "UserName",
  helperText:"username must be an email",
  labelText: "UserName"),
  ),
  ),
  const Padding(
  padding:EdgeInsets.only(left:20,right:20,bottom:50),
  child:TextField(
  obscureText: true,
  obscuringCharacter: '*',
  decoration:InputDecoration(
  border:OutlineInputBorder(),
  prefixIcon: Icon(Icons.visibility_off_sharp),
  hintText: "password",
  helperText: "password must contain 6 characters",
  labelText: "Password"),
  ),
  ),
  ElevatedButton(onPressed: () {

    if(uname == usercontroller.text && pwd == passcontroller.text) {

      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => HomePage()));

      usercontroller.text="";
      passcontroller.text="";
    }else{
     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Password"),
     //     backgroundColor:Colors.red,)
     // );
      Fluttertoast.showToast(
          msg: "Invalid Username or Password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          //timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }, child: const Text("Login"))
  ],
  ),
  ),
  );
  }
  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storedusername = preferences.getString('uname')!;
    String storedpassword=preferences.getString('pass')!;
    String usename=uname.text;
    String pwd=pass.text;

    if(storedusername == usename && storedpassword == pwd) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (SharedHome()));
    }else {
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Invalid username or password")));
      )
      }

  }
  }
