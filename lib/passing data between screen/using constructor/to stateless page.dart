import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StatelessPage extends StatelessWidget {
  int? phone;
  final String location;
  final String name;

  StatelessPage({super.key, required this.phone,required this.location,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Received Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: GoogleFonts.bahiana(fontSize: 30,color: Colors.cyan),),
            Text(location,style: GoogleFonts.bahiana(fontSize: 20,color: Colors.cyan),),
            Text('$phone',style: GoogleFonts.bahiana(fontSize: 20,color: Colors.cyan),)
          ],
        ),
      ),
    );
  }
}
