import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/screens/improvedPatientsScreen.dart';
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
  List<ChartData> categoryData = [
    ChartData(
      xAxis: 'Adeyele',
      yAxis: 50,
      // barColor: Colors.green,
    ),
    ChartData(
      xAxis: 'Boluwatife',
      yAxis: 100,
      // barColor: Colors.green,
    ),
    ChartData(
      xAxis: 'Matthew',
      yAxis: 150,
      // barColor: Colors.green,
    ),
    ChartData(
      xAxis: 'Paul',
      yAxis: 200,
      // barColor: Colors.green,
    ),
    ChartData(
      xAxis: 'Reyees',
      yAxis: 25,
      // barColor: Colors.green,
    ),
  ];
  List<ChartData> barChartData = [
    ChartData(
      xAxis: 'Paracetamol',
      yAxis: 55,
    ),
    ChartData(
      xAxis: 'Vitamin C',
      yAxis: 25,
    ),
    ChartData(
      xAxis: 'Chloroquine',
      yAxis: 15,
    ),
  ];
  ZoomPanBehavior? _zoomPanBehavior;
  TrackballBehavior? _categoryTrackballBehavior;
  TrackballBehavior? _barChartTrackballBehavior;
  // CrosshairBehavior? _crossHairBehavior;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _crossHairBehavior = CrosshairBehavior(shouldAlwaysShow: false,enable: true,activationMode: ActivationMode.singleTap);
    _zoomPanBehavior = ZoomPanBehavior(
        enablePinching: true,
        selectionRectBorderColor: Colors.red,
        selectionRectBorderWidth: 1,
        selectionRectColor: Colors.grey
    );
    _barChartTrackballBehavior =TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      tooltipSettings: const InteractiveTooltip(
        color: Color(0xFF0B7CB9),
        borderColor: Color(0xFF0B7CB9),
      ),
      builder: (BuildContext context, TrackballDetails trackballDetails){
        return GraphWidget(context: context,trackballDetails:trackballDetails,color: const Color(0xFF0B7CB9),);
      },
      // tooltipSettings: const InteractiveTooltip(
      //   // Formatting trackball tooltip text
      //     format: 'point.x : point.y'
      // )
    );
    _categoryTrackballBehavior = TrackballBehavior(
        enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipSettings: const InteractiveTooltip(
          color: myActiveColor,
          borderColor: myActiveColor,
        ),
        builder: (BuildContext context, TrackballDetails trackballDetails){
          return GraphWidget(context: context,trackballDetails:trackballDetails,color: myActiveColor,);
        },
        // tooltipSettings: const InteractiveTooltip(
        //   // Formatting trackball tooltip text
        //     format: 'point.x : point.y'
        // )
    );
  }
  @override
  Widget build(BuildContext context) {
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
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                        child: Column(
                          children: [
                            SizedBox(height: 16.h,),
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
                                      dataSource: categoryData,
                                      xValueMapper: (ChartData data, _) => data.xAxis,
                                      yValueMapper: (ChartData data, _) => data.yAxis,
                                      color: categoryData[0].barColor,
                                      markerSettings: const MarkerSettings(
                                          isVisible: true,
                                          shape: DataMarkerType.image,
                                          // Renders the image as marker
                                          image: AssetImage('images/profileIcon.png'),
                                        //color: Colors.green,
                                      )
                                  ),
                                ],
                              zoomPanBehavior: _zoomPanBehavior,
                              trackballBehavior: _categoryTrackballBehavior,
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
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: greyBlackColor,
                                ),
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
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                    child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 16.h,),
                            Row(
                              children: [
                                SizedBox(width: 16.w,),
                                InkWell(onTap:(){
                                  Navigator.pushNamed(context, ImprovedPatientsScreen.id);
                                },child: Text('Medication map',style: standardStyle.copyWith(fontSize: 14.sp),)),
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
                                    Text('Most improved patients',style: standardStyle.copyWith(fontSize: 14.sp,color: const Color(0xFF919197)),),
                                    Icon(Icons.keyboard_arrow_down,size: 20.sp,color: const Color(0xFF919197))
                                  ],
                                ),
                                SizedBox(width: 57.w,),
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
                              //borderWidth: 0,
                              series: <ColumnSeries<ChartData, String>>[
                                // Renders scatter chart
                                ColumnSeries<ChartData, String>(
                                    dataSource: barChartData,
                                    xValueMapper: (ChartData data, _) => data.xAxis,
                                    yValueMapper: (ChartData data, _) => data.yAxis,
                                    color: const Color(0xFF0B7CB9),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r)),
                                ),
                              ],
                              zoomPanBehavior: _zoomPanBehavior,
                              trackballBehavior:  _barChartTrackballBehavior,
                              primaryYAxis: NumericAxis(
                                minimum: 0,
                                maximum: 120,
                                title: AxisTitle(
                                    text: 'Number of patients',
                                    textStyle: TextStyle(
                                        fontSize: 8.sp,
                                        color: const Color(0xFF525257),
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: greyBlackColor,
                                ),
                              ),
                              primaryXAxis: CategoryAxis(
                                labelPlacement: LabelPlacement.betweenTicks,
                                labelsExtent: 46,
                                labelStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: greyBlackColor,
                                ),
                                title: AxisTitle(
                                    text: 'Medication',
                                    textStyle: TextStyle(
                                        fontSize: 8.sp,
                                        color: const Color(0xFF525257),
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                              ),
                              //crosshairBehavior: _crossHairBehavior,
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class GraphWidget extends StatelessWidget {
  final BuildContext? context;
  final dynamic trackballDetails;
  final Color? color;
  const GraphWidget({Key? key,this.context,this.trackballDetails,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 146.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          color==myActiveColor?Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${trackballDetails.point!.y} ',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white)),
              Text('mg/dl',style: TextStyle(fontSize: 8.sp,fontWeight: FontWeight.w600,color: Colors.white),),
            ],
          ):Text('${trackballDetails.point!.y} Patients',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.white)),
          color==myActiveColor?Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('2 hrs ago ',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w600,color: Colors.white)),
              Text('· View profile',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w600,color: Colors.white)),
            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('on this drug. ',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w600,color: Colors.white)),
              Text('View them',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w600,color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
