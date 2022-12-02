import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1B1B25),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(width/3, height*0.05, width/3, height*0.12),
              child: Container(
                width: width*0.22,
                height: width*0.22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                        'images/IoTAI 2 (1).png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(width*0.05,0,0,0),
              child: Text(
                  'Login to your Account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )
              ),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(width*0.05,height*0.04,width*0.05,0),
                    child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFFF771D),
                              width: 1.0,
                            ),
                          ),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Color(0xFF6A6A78)),
                          prefixIcon: Icon(Icons.email,color: Color(0xFF6A6A78),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width*0.05,height*0.015,width*0.05,height*0.04),
                    child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xFFFF771D),
                                width: 1.0,
                              ),
                            ),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Color(0xFF6A6A78)),
                            prefixIcon: Icon(Icons.lock,color: Color(0xFF6A6A78),),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: TextStyle(color: Colors.white)
                        )
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: width*0.9,
                      height: height*0.07,
                      child: Center(
                        child: Text(
                          'Log In',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width*0.15,
                  height: width*0.15,
                  child: Padding(
                    padding: EdgeInsets.all(width*0.04),
                    child: SvgPicture.asset('images/icons8-google-48.svg',),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.06,vertical: height*0.07),
                  child: Container(
                    width: width*0.15,
                    height: width*0.15,
                    child: Padding(
                      padding: EdgeInsets.all(width*0.04),
                      child: SvgPicture.asset('images/icons8-facebook-f.svg',),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Container(
                  width: width*0.15,
                  height: width*0.15,
                  child: Padding(
                    padding: EdgeInsets.all(width*0.04),
                    child: SvgPicture.asset('images/icons8-twitter.svg',),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do not have account?  ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFFFF771D),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
