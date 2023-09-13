import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///set background color way 1
        //backgroundColor:Colors.orangeAccent,
        body: Container(
      /// set background color way 2 using gradient inside container
      decoration: BoxDecoration(
          //gradient: LinearGradient(
          //    begin: Alignment.bottomLeft,
          //    end: Alignment.topRight,
          //    colors: [Colors.amber, Colors.deepOrangeAccent])
          ///set background color way 3 using Image
          image:
              DecorationImage(
                  fit:BoxFit.cover,image: AssetImage("assets/images/uzumaki.webp"))),
      child: Center(
        child: Column(
          children: [
            // Icon(
            //   Icons.sailing_outlined,
            //   size:80,
            //   color:Colors.purple,
            // ),
            Image.asset("assets/icons/iconn.png"),
            const Text(
              "My Application",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), //Text style
            ), //Text
          ],
        ),
      ),
    ));
  }
}
