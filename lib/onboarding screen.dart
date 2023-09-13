import 'package:class_works/splash2.dart';
import 'package:class_works/stateful%20login%20with%20validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.purple
      ),
      bodyTextStyle: GoogleFonts.aBeeZee(
        fontStyle: FontStyle.italic,fontSize: 20,color: Colors.pinkAccent
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.grey,
          Colors.white54,
          Colors.white
        ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft)
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'First Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://content.webengage.com/wp-content/uploads/sites/4/2017/11/time-on-mobile.jpg"),
        ),
        PageViewModel(
          title: 'First Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://qualaroo.com/blog/wp-content/uploads/2021/01/How-to-Increase-Mobile-App-Conversion-Rate_-645x335.jpg"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: "Introduction screen shows the details of the app and demo of pages",
          image: IntroImage("https://tearsheet.co/wp-content/uploads/2021/09/smb_visa.png"),
        )
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2())),
      showSkipButton: true,
      skip: Text('skip'),
      next: Icon(Icons.arrow_forward_ios_rounded),
      done: Text("Done"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(22, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )

      ),
    );
  }

  Widget IntroImage(String image) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
      image: NetworkImage(image),))
    );
  }
}
