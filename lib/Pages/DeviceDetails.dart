import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Notification.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xFF272739),
        actions: [
          IconButton(
              onPressed: ()=>{},
              icon: Icon(Icons.bar_chart,color: Colors.white,size: 28,)
          ),
          IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage(id:1)),
                );
              },
              icon: Icon(Icons.notifications,color: Colors.white,size: 28,)
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF1B1B25),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_pin,size: 60,color: Colors.white,),
                    SizedBox(width: 14,),
                    Text(
                      'Manaa Adem',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
              ),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.devices,
              ),
              title: const Text('My devices'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
              ),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support,
              ),
              title: const Text('Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support,
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            color: Color(0xFF272739),

          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),

            ),
            child: Column(
              children: [
                SizedBox(height: height*0.07),
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
