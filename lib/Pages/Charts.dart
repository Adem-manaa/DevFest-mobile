import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF1B1B25),
          appBar: AppBar(
            backgroundColor: Color(0xFF1B1B25),
            actions: [
              IconButton(
                  onPressed: ()=>{},
                  icon: Icon(Icons.bar_chart,color: Color(0xFFFF771D),size: 28,)
              ),
              IconButton(
                  onPressed: ()=>{},
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
          body: Column(
            children: [
              Image.asset('images/Logo.png'),
            ],
          ),
        )
    );
  }
}

