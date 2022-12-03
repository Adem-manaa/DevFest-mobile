import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF1B1B25),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 28,
                        )),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(
                              Icons.bar_chart,
                              color: Colors.white,
                              size: 28,
                            )),
                        IconButton(
                            onPressed: () => {},
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 28,
                            )),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Today",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 24),),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0,8,0,8),
                              child: Container(
                                height: height * 0.1,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Color(0xFF272739),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Alert!',
                                            style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.bold),
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
                                                    "The temperature in your kitchen is 35°, do you want to do something?. 2h",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Poppins'),)),
                                            SizedBox(
                                              height: height*0.03,
                                              width: width*0.15,
                                              child: TextButton(onPressed: ()=>{}, child: Text("Suggestions",style: TextStyle(color: Colors.white,fontSize: 8),),style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
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
                          }),
                      SizedBox(height: height*0.02,),
                      Text("Hisotry",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Poppins',fontSize: 24),),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0,8,0,8),
                              child: Container(
                                height: height * 0.1,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Color(0xFF272739),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Alert!',
                                            style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.bold),
                                          ),
                                          /*Icon(
                                            Icons.warning_amber_outlined,
                                            color: Colors.orange,
                                          ),*/
                                        ],
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                  "The temperature in your kitchen is 35°, do you want to do something?. 2h",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Poppins'),)),
                                            SizedBox(
                                              height: height*0.03,
                                              width: width*0.15,
                                              child: TextButton(onPressed: ()=>{}, child: Text("Suggestions",style: TextStyle(color: Colors.white,fontSize: 8),),style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                                              ),),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
