import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1B1B25),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(width/3, height*0.03, width/3, height*0.12),
              child: Image(image: AssetImage('images/logo.png')),
            ),
            Container(
              height: height*0.38,
              width: width*0.85,
              child: SvgPicture.asset('images/start.svg',
                width: width*0.75,
                height: 200,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width/14, height*0.05, width/14,height*0.07),
              child: Text(
                'Sign in to use the full potential of the app. Claim ownership of your sensors with a free account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width*0.05,
                    fontFamily: 'Poppins'
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: width*0.8,
                height: 40,
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFFF771D),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
