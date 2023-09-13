import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: ListView1(),));
}
class ListView1 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          Center(child: Text("Select your Food!!!",style: GoogleFonts.mukta(
            fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),
         )),
          Card(
          child:ListTile(
            title: Text("Apple"),
            subtitle: Text("\$80"),
            trailing: Icon(Icons.shopping_cart),
          leading: Image.asset("assets/images/apple.webp"),
          ),
          ),
          Card(
            child:ListTile(
              title: Text("Orange"),
              subtitle: Text("\$60"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/orange.jpg"),
            ),
          ),
          Card(
            child:ListTile(
              title: Text("grapes"),
              subtitle: Text("\$70"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/grapes1.jpeg"),
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Strawberry"),
              subtitle: Text("\$100"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/strawberry1.jpg"),
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Banana"),
              subtitle: Text("\$50"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/banana.jpg"),
            ),
          ),
          Card(
            child:ListTile(
              title: Text("Cherry"),
              subtitle: Text("\$90"),
              trailing: Icon(Icons.shopping_cart),
               leading: CircleAvatar(
                 backgroundImage: NetworkImage(
    "https://static.libertyprim.com/files/familles/cerise-large.jpg?1569271737")),
               ),
            ),
        ],
      ),
    );
  }
}