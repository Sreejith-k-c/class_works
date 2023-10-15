import 'package:class_works/firebase_example/phone_auth/phone_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDyK8I2nz7pwsc6932D3EdbIWbFJ6ZefsY",
        projectId: "fir-project-b3b29",
        appId: "1:511718417367:android:61b00571217d73c2fc2192",
        messagingSenderId: '',
        storageBucket: "fir-project-b3b29.appspot.com",
      ));  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.indigo[900],
    );
  }
}