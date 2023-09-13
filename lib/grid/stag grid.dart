import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(home: Stag_Grid(),));
}

class Stag_Grid extends StatelessWidget {
  var images=["assets/images/akaza.jpg","assets/images/apple.webp"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered GridView"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 4,//width
                mainAxisCellCount: 2,//height
                child: Container(
                  color: Colors.green,
                  child: const Center(
                      child:Icon(Icons.cabin)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,//width
                mainAxisCellCount: 4,//height
                child: Container(
                  color: Colors.orange,
                  child: const Center(
                      child:Icon(Icons.access_alarms_sharp)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,//width
                mainAxisCellCount: 2,//height
                child: Container(
                  color: Colors.red,
                  child: const Center(
                      child:Icon(Icons.phone)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,//width
                mainAxisCellCount: 3,//height
                child: Container(
                  color: Colors.blueAccent,
                  child: const Center(
                      child:Icon(Icons.exit_to_app)),
                ))
          ],
        ),
      ),
    );
  }
}