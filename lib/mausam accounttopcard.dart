import 'package:flutter/material.dart';

class AccountTopCard extends StatelessWidget {
  const AccountTopCard({
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
           child: ClipRect(

    child: SizedBox(
    height: 180,
    child: Card(
    child: Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
    radius: 56,
    backgroundImage: AssetImage("assets/images/uzumaki.webp"),
    ),
    Padding(padding: const EdgeInsets.all(8.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
    'Uzumaki',
    style: TextStyle(
    fontWeight: FontWeight.bold,fontSize: 20),
    ),
    const SizedBox(height: 5),
    const Text('NPR.1,00,999.35'),
    const SizedBox(height: 5),
    const Text('9087646134')
    ],
    ),
    )
    ],
    ),
    ),
    ),
    ),
    ),),
      ],
    );
  }
}
