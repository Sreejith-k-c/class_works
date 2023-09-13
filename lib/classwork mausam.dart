import 'package:class_works/mausam%20accounttopcard.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Mausam(),));
}

class Mausam extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: const Icon(Icons.menu),
          actions:const[
          Padding(
              padding:EdgeInsets.only(right: 10),
        child: Icon(Icons.qr_code,
        size: 30,
        ),
          )
        ],
        title: RichText(
          text: const TextSpan(
            text: 'Welcome!',
            style: TextStyle(fontSize: 20),
            children: [TextSpan(text: ' '),TextSpan(text: 'MAUSAM')]),
          ),
        centerTitle: true,
        ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate.fixed(
              [
                const AccountTopCard(),
      Padding(padding:const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Image.asset("assets/images/bank.jpg",width: 40,),
          const SizedBox(width: 15),
      const Text(
        'WOULD YOU LIKE TO?',
        style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold),
      )
        ],
      ),
      ),
        ],
      ),
    ),
    ],
    ),
    );
  }
}