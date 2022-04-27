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
      backgroundColor: const Color(0xFFF3F1F1),
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
                      Text('Reports',style: standardStyle.copyWith(fontSize: 18.w,fontWeight: FontWeight.w700),),
                      const Icon(
                        Icons.notifications_none,
                        color: greyBlackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 16.w,),
                          Text('Patient progress',style: standardStyle.copyWith(fontSize: 14.sp),),
                          SizedBox(width: 113.w,),
                          Row(
                            children: [
                              Text('Diabetes',style: standardStyle.copyWith(color: const Color(0xFF0B7CB9),fontSize: 14.sp),),
                              Icon(Icons.keyboard_arrow_down,size: 20.sp,color: const Color(0xFF0B7CB9))
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          SizedBox(width: 16.w,),
                          Row(
                            children: [
                              Text('All patients',style: standardStyle.copyWith(fontSize: 14.sp,color: const Color(0xFF919197)),),
                              Icon(Icons.keyboard_arrow_down,size: 20.sp,color: const Color(0xFF919197))
                            ],
                          ),
                          SizedBox(width: 139.w,),
                          Row(
                            children: [
                              Text('To date',style: standardStyle.copyWith(fontSize: 14.sp,color: const Color(0xFF919197)),),
                              Icon(Icons.keyboard_arrow_down,size: 20.sp,color: const Color(0xFF919197))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 23.h,),
                      SfCartesianChart(
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
                          title: AxisTitle(
                            text: 'Blood sugar',
                            textStyle: TextStyle(
                                fontSize: 8.sp,
                                color: const Color(0xFF525257),
                                fontWeight: FontWeight.w600
                            )
                          )
                        ),
                        primaryXAxis: CategoryAxis(
                            labelPlacement: LabelPlacement.betweenTicks,
                          labelsExtent: 46,
                          labelStyle: TextStyle(
                            fontSize: 14.sp,
                            color: greyBlackColor,
                          ),
                          title: AxisTitle(
                            text: 'Patients',
                            textStyle: TextStyle(
                              fontSize: 8.sp,
                              color: const Color(0xFF525257),
                              fontWeight: FontWeight.w600
                            )
                          ),
                        ),

                      ),
                    ],
                  )
              ),
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