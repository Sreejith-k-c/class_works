import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:ListView2()));
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
      appBar: AppBar(title: Text("ListView2"),),
      body: ListView(
        children:List.generate(10, (index) => Card(
          child:ListTile(
            title: Text(name[index]),
            subtitle: Text("${prize[index]}"),
            leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
          ),
          )
        )),
      ),
    );
  }
}