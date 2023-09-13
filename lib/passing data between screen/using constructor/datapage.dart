import 'package:class_works/passing%20data%20between%20screen/using%20constructor/to%20stateful%20page.dart';
import 'package:class_works/passing%20data%20between%20screen/using%20constructor/to%20stateless%20page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: DataPage(),));
}

class DataPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data Between Screens Using Constructor'),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>StatelessPage(name:"Luminar",location:"Kakkanad",phone:9876543210)));
            }, child: Text("To Stateless Page")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>StatefulPage(name:"Luminar",location:"kakkanad",phone:9087654231)));
            }, child: Text("To Stateful Page")),
          ],
        ),
      ),
    );
  }
}
