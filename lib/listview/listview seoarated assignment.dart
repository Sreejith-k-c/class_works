import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView_Separated2(),
  ));
}

class ListView_Separated2 extends StatelessWidget {
  var months=["january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"];
  ListView_Separated2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Separated'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child:Text(months[index])),
              );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return const Card(
                color: Colors.red,
                child: Text("Advertisement"),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
