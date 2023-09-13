import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main(){
  runApp(MaterialApp(home: RiveEx(),));
}

class RiveEx extends StatelessWidget {
  const RiveEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.asset("assets/animation/5122-10308-eye-joysticks-demo.riv"),
      ),
    );
  }
}
