import 'package:flutter/material.dart';

import 'DeviceDetails.dart';
import 'Notification.dart';

class DevicesPage extends StatefulWidget {
  @override
  _DevicesPageState createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF1B1B25),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25,25,0,25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15,0),
                      child: Container(
                        width: width*0.15,
                        height: width*0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('images/moussa.jpg'),
                            fit: BoxFit.cover,
                            opacity: 0.7,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Moussa',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '03/12/2022',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: width*0.23,
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotificationPage(id: 1,)),
                          );
                        },
                        icon: Icon(Icons.notifications,color: Colors.white,size: 30,),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 0,horizontal: 25),
                    child: Text(
                      'Your Devices',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: width*0.2,
                  ),
                ],
              ),
              Container(
                height: 25,
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,width*0.05,0,width*0.01),
                              child: Text(
                                'Device 34IS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,0,0,width*0.03),
                              child: Text(
                                'Home-Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DeviceDetails()),
                                );
                              },
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,width*0.05,0),
                          child: Container(
                            width: width*0.25,
                            height: width*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/product.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: width*0.9,
                    height: height*0.2,
                    decoration: BoxDecoration(
                        color: Color(0xFF272739),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  SizedBox(
                    height: height*0.015,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,width*0.05,0,width*0.01),
                              child: Text(
                                'Device 35IS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,0,0,width*0.03),
                              child: Text(
                                'Home-Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DeviceDetails()),
                                );
                              },
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,width*0.05,0),
                          child: Container(
                            width: width*0.25,
                            height: width*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/product1.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: width*0.9,
                    height: height*0.2,
                    decoration: BoxDecoration(
                        color: Color(0xFF272739),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  SizedBox(
                    height: height*0.015,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,width*0.05,0,width*0.01),
                              child: Text(
                                'Device 36IS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,0,0,width*0.03),
                              child: Text(
                                'Home-Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DeviceDetails()),
                                );
                              },
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,width*0.05,0),
                          child: Container(
                            width: width*0.25,
                            height: width*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/product2.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: width*0.9,
                    height: height*0.2,
                    decoration: BoxDecoration(
                        color: Color(0xFF272739),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  SizedBox(
                    height: height*0.015,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,width*0.05,0,width*0.01),
                              child: Text(
                                'Device 37IS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(width*0.05,0,0,width*0.03),
                              child: Text(
                                'Home-Kitchen',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DeviceDetails()),
                                );
                              },
                              child: Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,0,width*0.05,0),
                          child: Container(
                            width: width*0.25,
                            height: width*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/product3.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: width*0.9,
                    height: height*0.2,
                    decoration: BoxDecoration(
                        color: Color(0xFF272739),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  SizedBox(
                    height: height*0.02,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
