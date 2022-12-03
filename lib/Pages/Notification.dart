import 'dart:developer';

import 'package:flutter/material.dart';
import 'Devices.dart';
import '../Services/NotificationService.dart';

class NotificationPage extends StatefulWidget {
  final int id;
  const NotificationPage({Key? key, required this.id}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF1B1B25),
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
                      Container(
                        width: width*0.15,
                        height: width*0.15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('images/moussa.jpg'),
                            fit: BoxFit.cover,
                            opacity: 0.7,
                          ),
                        ),
                      ),
                      SizedBox(width: 14,),
                      Text(
                        'Aouinane Moussa',
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
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.devices,
                ),
                title: const Text('My devices'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevicesPage()),
                  );
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 24),
                      ),
                      FutureBuilder(
                        future: fetchNotification(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final data = snapshot.data as List<dynamic>;
                            return ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: data.length,
                              itemBuilder: (context, int index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    height: height * 0.1,
                                    width: width * 0.9,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF272739),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 8, 16, 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                data[index]['type'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.warning_amber_outlined,
                                                color: Colors.orange,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  data[index]['content'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins'),
                                                )),
                                                SizedBox(
                                                  height: height * 0.034,
                                                  width: width * 0.15,
                                                  child: TextButton(
                                                    onPressed: () => {},
                                                    child: Text(
                                                      "Suggestions",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 8),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Color(
                                                                  0xFFFF771D)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return Text('wait');
                          }
                        },
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "Hisotry",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 24),
                      ),
                      FutureBuilder(
                        future: fetchNotification(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final data = snapshot.data as List<dynamic>;
                            return ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: data.length,
                              itemBuilder: (context, int index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    height: height * 0.1,
                                    width: width * 0.9,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF272739),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 8, 16, 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                data[index]['type'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.warning_amber_outlined,
                                                color: Colors.orange,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  data[index]['content'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins'),
                                                )),
                                                SizedBox(
                                                  height: height * 0.034,
                                                  width: width * 0.15,
                                                  child: TextButton(
                                                    onPressed: () => {},
                                                    child: Text(
                                                      "Suggestions",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 8),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Color(
                                                                  0xFFFF771D)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            return Text('wait');
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
