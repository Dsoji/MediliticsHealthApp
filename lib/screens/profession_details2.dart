import 'package:flutter/material.dart';
import 'package:medilitics/screens/medilitics_title_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';

class ProfessionalDetailsScreen2 extends StatelessWidget {
  static String id = '/ProfessionalDetailsScreen2';
  const ProfessionalDetailsScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const TitleBar(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      Text(
                        'Please enter the hospital(s) you’re affiliated with below.',
                        style: standardStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReUsedFields(height: 48,hintText: 'Select hospital affiliation',isSuffixIcon: true,),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32,right: 20,left: 20),
              child: Row(
                children: [
                  Flexible( 
                    child: WhiteButton(text: 'Previous',width: 160,onPressed: (){

                    },),
                  ),
                  const SizedBox(width: 15,),
                  Flexible(
                    child: RedButton(text: 'Complete',color: const Color(0xFFFBD4D5),width: 160,onPressed: (){

                    },),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
