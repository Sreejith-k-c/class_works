import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Shrine(),));
}

class Shrine extends StatelessWidget {
var images=["assets/images/apple.webp"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHRINE"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5),
          itemBuilder: (context,index){
            return Container(
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
            image: DecorationImage(
              image: AssetImage(images[index]))
              ),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(Icons.cloudy_snowing),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Hello"),
                    ],
                ),
              );
          }),
    );
  }
}