import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner:false,
      home:ListView2()));
}

class ListView2 extends StatelessWidget {
  var name=["apple",
    "banana",
    "orange",
    "cherry",
    "grapes",
    "strawberry",
    "mango",
    "pineapple",
    "watermelon",
    "dragon fruit"];
  var image=["assets/images/apple.webp",
    "assets/images/banana.jpg",
    "assets/images/orange.jpg",
    "assets/images/cherry.jpeg",
    "assets/images/grapes1.jpeg",
    "assets/images/strawberry1.jpg",
    "assets/images/mango.jpg",
    "assets/images/pineapple.webp",
    "assets/images/watermelon.jpg",
    "assets/images/dragonfruit.jpg"];
  var prize=[80,50,60,90,70,100,60,60,50,120];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
          title: Text("ListView2"),
      actions:[
       const Icon(Icons.camera_alt),
       const SizedBox(width: 20,),
       const Icon(Icons.search),
       const SizedBox(width: 10,),
        PopupMenuButton(itemBuilder: (context){
          return [
            const PopupMenuItem(child: Text("Settings")),
            const PopupMenuItem(child: Text("Profile")),
            const PopupMenuItem(child: Text("help")),
          ];
        })
      ],
      ),
      body: ListView(
        children:List.generate(10, (index) => Card(
            child:ListTile(
              title: Text(name[index]),
              subtitle: Text("${prize[index]}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              trailing:Wrap(
                direction: Axis.vertical,
               children: [
                 Text("12.30"),SizedBox(width: 15,),
                 CircleAvatar(
                   minRadius: 20,
                     backgroundColor: Colors.teal,
                 child: Text("2"),)
            ]),
            ),
        )),
      ),
    );
  }
}