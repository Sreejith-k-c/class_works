import 'package:class_works/widget%20refractoring/new%20widget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: RefraHome(),));
}

class RefraHome extends StatelessWidget {
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
  var price=[80,50,60,90,70,100,60,60,50,120];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Using Refractoring"),
      ),
      body: GridView.builder(
          gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          itemBuilder: (context,index) {
            return NewWidget(
              myimage:AssetImage(image[index]),
              name:name[index],
              price:'${price[index]}',
            );
          }),
    );
  }
}
