/*import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {

  var today = new DateTime.now();

  late List<charts.Series<GraphPoint, DateTime>> _seriesData;

  _generateData() {
    var DataCalculs = [
      //TODO: HNA CHANGIW  LA VALEUR ( EX : FI  LIGNE 1 CHANGIW 381.4  )ET LE NOMBRE DE LIGNES ( HNA 5) HOWA LE NOMBRE TA3 LES JOURS LI YKOUN FI AXE DES ABSCISSES
      new GraphPoint(today, 3.1, Color(0xff1490F5)), // 1
      new GraphPoint(new DateTime(today.year, today.month, today.day - 1), 8.4,
          Color(0xff1490F5)), // 2
      new GraphPoint(new DateTime(today.year, today.month, today.day - 2), 7.0,
          Color(0xff1490F5)), //3
      new GraphPoint(new DateTime(today.year, today.month, today.day - 3), 7,
          Color(0xff1490F5)), //4
      new GraphPoint(new DateTime(today.year, today.month, today.day - 4), 11.7,
          Color(0xff1490F5)), //5
    ];

    // TODO : DATA1 : TA3 LES CALCULS      , DATA2 : TA3 GEOMETRY             DATA3 : TA3 ANIMALS

    var DataGeometry = [
      new GraphPoint(today, 2.1, Color(0xFF2CBAA4)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 1), 2.4,
          Color(0xFF2CBAA4)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 2), 11.7,
          Color(0xFF2CBAA4)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 3), 8.7,
          Color(0xFF2CBAA4)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 4), 9.7,
          Color(0xFF2CBAA4)),
    ];

    var DataAnimals = [
      new GraphPoint(today, 1.1, Color(0xFFEDAE1D)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 1), 4.2,
          Color(0xFFEDAE1D)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 2), 12.7,
          Color(0xFFEDAE1D)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 3), 20.7,
          Color(0xFFEDAE1D)),
      new GraphPoint(new DateTime(today.year, today.month, today.day - 4), 9.3,
          Color(0xFFEDAE1D)),
    ];
    _seriesData.add(
      charts.Series(
        id: 'Daily Evaluation calculs',
        colorFn: (GraphPoint Score, _) =>
            charts.ColorUtil.fromDartColor(Score.color),
        domainFn: (GraphPoint score, _) => score.time,
        measureFn: (GraphPoint Score, _) => Score.score,
        data: DataCalculs,
      ),
    );

    _seriesData.add(
      charts.Series(
        id: 'Daily Evaluation geometry',
        colorFn: (GraphPoint Score, _) =>
            charts.ColorUtil.fromDartColor(Score.color),
        domainFn: (GraphPoint score, _) => score.time,
        measureFn: (GraphPoint Score, _) => Score.score,
        data: DataGeometry,
      ),
    );
    _seriesData.add(
      charts.Series(
        id: 'Daily Evaluation animals',
        colorFn: (GraphPoint Score, _) =>
            charts.ColorUtil.fromDartColor(Score.color),
        domainFn: (GraphPoint score, _) => score.time,
        measureFn: (GraphPoint Score, _) => Score.score,
        data: DataAnimals,
      ),
    );
  }

  void initState() {
    super.initState();
    _seriesData = <charts.Series<GraphPoint, DateTime>>[];
    _generateData();
  }

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
              Expanded(
                  child: charts.TimeSeriesChart(
                    _seriesData,
                    animate: true,
                    animationDuration: Duration(seconds: 1),
                    // Configure the default renderer as a line renderer. This will be used
                    // for any series that does not define a rendererIdKey.
                    //
                    // This is the default configuration, but is shown here for  illustration.
                    defaultRenderer: new charts.LineRendererConfig(),
                    // Custom renderer configuration for the point series.
                    customSeriesRenderers: [
                      new charts.PointRendererConfig(
                          customRendererId: 'customPoint')
                    ],
                    // Optionally pass in a [DateTimeFactory] used by the chart. The factory
                    // should create the same type of [DateTime] as the data provided. If none
                    // specified, the default creates local date time.
                    dateTimeFactory: const charts.LocalDateTimeFactory(),
                  )),
            ],
          ),
        )
    );
  }
}


class GraphPoint {
  final DateTime time;
  final double score;
  final Color color;
  GraphPoint(this.time, this.score, this.color);
}

*/