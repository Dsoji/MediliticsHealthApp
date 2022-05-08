import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImprovedPatientsScreen extends StatelessWidget {
  static String id = '/ImprovedPatientsScreen';
  const ImprovedPatientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleBar(
              text: 'Name of medication',
              addDivider: false,
              width: 193.w,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Most improved patients',style: standardStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF919197)),),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFF919197),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('To date',style: standardStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFF919197))),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFF919197),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Text('2 PATIENTS',style: standardStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 14),),
                  SizedBox(
                    height: 22.h,
                  ),
                  SizedBox(
                    height: 156.h,
                    child: ListView(
                      children: [
                        Container(
                          height: 56.h,
                          width: MediaQuery.of(context).size.width - 57,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  color: Color(0xFF0B7CB9), width: 3),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/profileIcon.png',
                                    color: Color(0xFF525257),
                                  ),
                                  Column(
                                    children: [
                                      Text('Kemi Adeyanju',style: standardStyle.copyWith(fontWeight: FontWeight.w600),),
                                      Text('Dosage here',style: standardStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF525257))),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,color: Color(0xFF919197),size: 20,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Divider(),
                        SizedBox(
                          height: 22.h,
                        ),
                        Container(
                          height: 56.h,
                          width: MediaQuery.of(context).size.width - 57,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  color: Color(0xFF0B7CB9), width: 3),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/profileIcon.png',
                                    color: Color(0xFF525257),
                                  ),
                                  Column(
                                    children: [
                                      Text('Charlie Bergson',style: standardStyle.copyWith(fontWeight: FontWeight.w600),),
                                      Text('Dosage here',style: standardStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF525257))),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,color: Color(0xFF919197),size: 20,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text('EXCLUDED PATIENTS',style: standardStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 14),),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                      'Patients prescribed this medication but who are not tracking adherence are not included in the data set, but you can see them below.',
                      style: standardStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF525257))
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  SizedBox(
                    height: 156.h,
                    child: ListView(
                      children: [
                        Container(
                          height: 56.h,
                          width: MediaQuery.of(context).size.width - 57,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                  color: Color(0xFF0B7CB9), width: 3),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/profileIcon.png',
                                    color: Color(0xFF525257),
                                  ),
                                  Column(
                                    children: [
                                      Text('Kaylynn Westervelt',style: standardStyle.copyWith(fontWeight: FontWeight.w600),),
                                      Text('Dosage here',style: standardStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF525257))),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios,color: Color(0xFF919197),size: 20,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Divider(),
                        SizedBox(
                          height: 22.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
