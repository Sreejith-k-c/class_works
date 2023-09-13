import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: BottomSheet(),));
}

class BottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet with image on tap"),),
      body: Center(
        child: GestureDetector(   //can use Inkwell also for perforing events
        onLongPress: (){

          },
          child:Image.asset("assets/images/uzumaki.webp")),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context){

      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("WhatsApp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent,),
              title: Text("Facebook"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.black,),
              title: Text("Twitter"),
            )
          ],
        ),
      );
    });
  }
}
