import 'package:flutter/material.dart';
import 'package:medilitics/screens/individual_patient_screen.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFFF3F1F1),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 0.h),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Patients',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: greyBlackColor,
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Color(0xFF000000).withOpacity(0.58),
                          context: context,
                          builder: (context) => InvitePatientModalSheet(),
                          isScrollControlled: true,
                          enableDrag: false,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 16.48.h,
                            width: 16.45.w,
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: myActiveColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 11.77.w,
                          ),
                          Text(
                            'Add',
                            style: standardStyle.copyWith(
                                color: myActiveColor,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.h,
                ),
                TabBar(
                    indicatorColor: Color(0xFF0B7CB9),
                    indicatorWeight: 3.5,
                    labelColor: Color(0xFF0B7CB9),
                    unselectedLabelColor: Color(0xFF919197),
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: [
                      Text(
                        "Current",
                      ),
                      Text(
                        "Past",
                      )
                    ]),
                Expanded(
                  child: TabBarView(
                    children: [CurrentPatient(), PastPatient()],
                  ),
                )
              ]),
            ),
          )),
    );
  }
}

class CurrentPatient extends StatelessWidget {
  const CurrentPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView(
          children: [
            Text('NEW REQUESTS (1)',
                style: standardStyle.copyWith(
                    color: Color(0xFF919197), fontWeight: FontWeight.w600)),
            SizedBox(
              height: 12.h,
            ),
            ReUsedPatientsCurrentCard(
              name: 'Williams Balarabe',
            ),
            SizedBox(
              height: 51.42.h,
            ),
            Row(
              children: [
                Icon(Icons.search, color: Color(0xFF919197)),
                SizedBox(
                  height: 11.18.w,
                ),
                Text(
                  'Type to search your patients...',
                  style: standardStyle.copyWith(color: Color(0xFF919197)),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ReUsedPatientsCurrentCard(
              name: 'Kemi Adeyanju',
            ),
            SizedBox(
              height: 12.h,
            ),
            ReUsedPatientsCurrentCard(
              name: 'Frederick Phillips',
            ),
          ],
        ));
  }
}

class ReUsedPatientsCurrentCard extends StatelessWidget {
  final String? name;
  const ReUsedPatientsCurrentCard({Key? key, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualPatient(patientName: name,)));},
      child: SizedBox(
        height: 64.h,
        width: MediaQuery.of(context).size.width - 40.w,
        child: Card(
          color: Color(0xFFF3F4F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  Image.asset(
                    'images/profileIcon.png',
                    color: Color(0xFF919197),
                    height: 40.h,
                    width: 40.w,
                  ),
                  Text(
                    name!,
                    style: standardStyle.copyWith(fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF919197),
                    size: 14,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PastPatient extends StatelessWidget {
  const PastPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PatientsCard extends StatelessWidget {
  const PatientsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color(0xFF222525),
      color: Color(0xFFF3F1F1),
    );
  }
}
class InvitePatientModalSheet extends StatelessWidget {
  const InvitePatientModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 16.w,
            ),
            MaterialButton(
              onPressed: () {Navigator.pop(context);},
              child: Icon(Icons.close,size: 18,),
              height: 40.h,
              minWidth: 40.w,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(40)),
            ),
          ],
        ),
        SizedBox(
          height: 82.h,
        ),
        Expanded(
          child:  Scaffold(
            backgroundColor:
            Color(0xFF000000).withOpacity(0.58),
            body: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: ListView(
                padding: EdgeInsets.only(top: 20.h,right: 20.w,left: 20.w,),
                children: [
                  Text(
                    'Invite patient',
                    style: standardStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Enter your patient’s details below and we’ll send them an invite to join.',
                    style: standardStyle.copyWith(
                        color: Color(0xFF525257)),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ReUsedFields(
                    isSuffixIcon: false,
                    height: 48.h,
                    hintText: 'Patient’s name',
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ReUsedFields(
                    isSuffixIcon: false,
                    height: 48.h,
                    hintText:
                    'Email address (if you have it)',
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    child:
                    InternationalPhoneNumberInput(
                      onInputChanged: (phoneNumber) {},
                      inputDecoration:
                      const InputDecoration(
                        hintText: '000 000 0000',
                      ),
                      inputBorder:
                      const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    height: 50.h,
                  ),
                  ReUsedFields(
                    isSuffixIcon: false,
                    height: 48.h,
                    hintText: 'Message (optional)',
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 66.h,
                  ),
                  RedButton(
                    color: myActiveColor,
                    width: 335.w,
                    onPressed: () {},
                    text: 'Send invite',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

