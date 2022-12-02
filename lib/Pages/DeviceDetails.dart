import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class DeviceDetails extends StatefulWidget {
  const DeviceDetails({Key? key}) : super(key: key);

  @override
  _DeviceDetailsState createState() => _DeviceDetailsState();
}

class _DeviceDetailsState extends State<DeviceDetails> {
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            color: HexColor('#272739'),

          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),

            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: ()=>{}, icon: Icon(Icons.menu,color: Colors.white,size: 28,)),
                  Row(
                    children: [
                      IconButton(onPressed: ()=>{}, icon: Icon(Icons.bar_chart,color: Colors.white,size: 28,)),
                      IconButton(onPressed: ()=>{}, icon: Icon(Icons.notifications,color: Colors.white,size: 28,)),
                    ],
                  )
                ],
                ),
                SizedBox(height: height*0.05),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Home-Kitchen",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            fontFamily: 'Poppins'
                        )
                        ),
                        Text("23°C",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 64,
                            fontFamily: 'Poppins'
                        ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.1
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(width*0.2,0,0,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('images/Hum.png',height: height*0.14,width: width*0.14,),
                              SizedBox(
                                width: width*0.05,
                              ),
                              Text("53%",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'Poppins'
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(width*0.2,0,0,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('images/press.png',height: height*0.14,width: width*0.14,),
                              SizedBox(
                                width: width*0.05,
                              ),
                              Text("990 hPA",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'Poppins'
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(width*0.2,0,0,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('images/light.png',height: height*0.14,width: width*0.14,),
                              SizedBox(
                                width: width*0.05,
                              ),
                              Text("990 hPA",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'Poppins'
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
