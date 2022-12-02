import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';

//:TODO : FIXING UI+ ADDING LOGO


class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      bodyTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins',
        fontSize: 16,
      ),
      bodyPadding: EdgeInsets.only(left: 32,bottom: 0,right: 32,top: 0),
    );
    final listPages = [
      PageViewModel(
        title: "",
        body:
            "Measure environmental data: temperature, relative humidity and air pressure",
        image: Image.asset('images/thermometer.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "",
        body:
            "Access data for each linked sensor in real time and explore histpry graphs",
        image: Image.asset('images/graph.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "",
        body:
            "Access data for each linked sensor in real time and explore histpry graphs",
        image: Image.asset('images/notifications.png'),
        decoration: pageDecoration,
      )
    ];
    return IntroductionScreen(
      globalBackgroundColor: HexColor("#1B1B25"),
      pages: listPages,
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: HexColor('#FF771D'),
        color: Colors.white,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      skip: const Icon(Icons.skip_next),
      next: const Text(""),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontFamily: 'Poppins')),
      onDone: () {
        // On Done button pressed
      },
      onSkip: () {
        // On Skip button pressed
      },
    );
  }
}
