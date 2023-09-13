import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home:LotAnim(),));
}

class LotAnim extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body: ListView(
        children: [
          SizedBox(
            height: 70,
              width: 70,
          child:Lottie.asset("assets/animation/animation naruto.json")),
          Lottie.network("https://lottie.host/cb42becf-73eb-42c9-a4f0-91c6c34925cb/EdvRd8BsfF.json")
        ],
      ),
    );
  }
}