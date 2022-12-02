import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF1B1B25),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(width/3, height*0.02, width/3, height*0.12),
            child: Image.asset('images/IoTAI 2 (1).png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(width*0.05, 0, 0,0),
            child: Text(
              'Create your Account',
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
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(color: Color(0xFF6A6A78)),
                        prefixIcon: Icon(Icons.person,color: Color(0xFF6A6A78),),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(width*0.05,height*0.015,width*0.05,0),
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
                  padding: EdgeInsets.fromLTRB(width*0.05,height*0.015,width*0.05,0),
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
                          hintText: 'Confirm your password',
                          hintStyle: TextStyle(color: Color(0xFF6A6A78)),
                          prefixIcon: Icon(Icons.lock,color: Color(0xFF6A6A78),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(color: Colors.white)
                      )
                  ),
                ),
                SizedBox(
                  width: width*0.9,
                  height: height*0.08,
                  child: TextButton(
                    onPressed: () =>{},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                    ),
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
