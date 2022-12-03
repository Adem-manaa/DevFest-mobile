import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommandationPage extends StatefulWidget {
  @override
  _RecommandationPageState createState() => _RecommandationPageState();
}

class _RecommandationPageState extends State<RecommandationPage> {

  @override
  Widget build(BuildContext context) {

    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    double _value = 40;

    return Scaffold(
      backgroundColor: Color(0xFF1B1B25),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                       Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.white,)),
                SizedBox(
                  width: width*0.13,
                ),
                Text(
                  'Recommandations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.05,),
            Row(
              children: [
                Icon(Icons.warning_amber_rounded,size: 110,color: Color(0xFFFF771D),),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          'Attention please! a fire is detected in your home by Device 34IS!',
                          style: TextStyle(
                            color: Color(0xFFFF771D),
                          ),
                      ),
                      Text(
                        'Here a list of things you can do them now with one click!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height*0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.04),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF272739),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height*0.03),
                  child: Column(
                    children: [
                      Text('40°C',style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('images/clim.png'),
                            Text('Air conditioner',style: TextStyle(color: Colors.white,fontSize: 18),),
                            Image.asset('images/button.png'),
                          ],
                        ),
                      ),
                      Slider(
                        min: 0.0,
                        max: 100.0,
                        activeColor: Color(0xFFFF771D),
                        inactiveColor: Color(0xA1FF771D),
                        thumbColor: Colors.white,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.07,),
            Row(
              children: [
                SizedBox(
                  width: width*0.06,
                ),
                Image.asset('images/lamp.png'),
                SizedBox(
                  width: width*0.05,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Call emergency',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Call the near emergency to your home ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Yes',style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                ),
              ),
            ),
            SizedBox(height: height*0.01,),
            Row(
              children: [
                SizedBox(
                  width: width*0.06,
                ),
                Image.asset('images/power.png'),
                SizedBox(
                  width: width*0.05,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cut the current',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cut the current to void electrical damaged',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Yes',style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFFF771D)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
