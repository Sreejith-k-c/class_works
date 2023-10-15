import 'package:class_works/firebase_example/email_pass_auth/firebase_db.dart';
import 'package:class_works/firebase_example/email_pass_auth/login_fir.dart';
import 'package:flutter/material.dart';

class HomeFire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          FirebaseHelper().signOut().then((result) =>
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginFire())));
        }, child: Text("SignOut")),
      ),
    );
  }
}