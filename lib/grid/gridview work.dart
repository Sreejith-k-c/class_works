import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewwork(),));
}

class GridViewwork extends StatelessWidget {
var images=["assets/images/uzumaki.webp",
  "assets/images/strawberry1.jpg"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding:const EdgeInsets.all(18.0),
          gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,mainAxisSpacing:10 ),
          itemCount: 12,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color[index],
               // image: DecorationImage(
                 //   image: AssetImage(images[index]))),
    ),
            child: Row(),
            );
  },
    itemcount:10,

}