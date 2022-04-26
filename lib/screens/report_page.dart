import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:medilitics/utilities/charts_data.dart';
//https://help.syncfusion.com/flutter/cartesian-charts/axis-types
class ReportScreen extends StatefulWidget {
  static String id = '/ReportScreen';

  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final ChartData _chartData = ChartData();
  List<ChartData> data = [
    ChartData(
      xAxis: 'Adeyele',
      yAxis: 50,
      //barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChartData(
      xAxis: 'Boluwatife',
      yAxis: 100,
      //barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChartData(
      xAxis: 'Matthew',
      yAxis: 150,
      //barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChartData(
      xAxis: 'Paul',
      yAxis: 200,
      //barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ChartData(
      xAxis: 'Reyees',
      yAxis: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // List<charts.Series<DeveloperSeries, String>> series = [
    //   ScatterSeries<ChartData, DateTime>(
    //       dataSource: data,
    //       xValueMapper: (ChartData data, _) => data.x,
    //       yValueMapper: (ChartData data, _) => data.y
    //   )
    // ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 56.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('Reports',style: standardStyle.copyWith(fontSize: 18.w),),
                      const Icon(
                        Icons.notifications_none,
                        color: greyBlackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                child: SfCartesianChart(
                    series: <ChartSeries>[
                      // Renders scatter chart
                      ScatterSeries<ChartData, String>(
                          dataSource: data,
                          xValueMapper: (ChartData data, _) => data.xAxis,
                          yValueMapper: (ChartData data, _) => data.yAxis,
                          markerSettings: const MarkerSettings(
                              isVisible: true,
                              shape: DataMarkerType.image,
                              // Renders the image as marker
                              image: AssetImage('images/profileIcon.png'),
                            //color: Colors.green,
                          )
                      ),
                    ],

                  primaryYAxis: NumericAxis(
                    minimum: 0,
                    maximum: 300,
                  ),
                  primaryXAxis: CategoryAxis(
                      labelPlacement: LabelPlacement.betweenTicks
                  ),

                )
            )
          ],
        ),
      ),
    );
  }
}
//primaryXAxis: CategoryAxis(
//                             title: AxisTitle(
//                                 text: 'X-Axis',
//                                 textStyle: TextStyle(
//                                     color: Colors.deepOrange,
//                                     fontFamily: 'Roboto',
//                                     fontSize: 16,
//                                     fontStyle: FontStyle.italic,
//                                     fontWeight: FontWeight.w300
//                                 )
//                             )
//                         )