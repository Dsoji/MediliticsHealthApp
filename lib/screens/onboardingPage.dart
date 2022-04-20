import 'package:flutter/material.dart';
import 'package:medilitics/screens/basic_profile_page.dart';
import 'package:medilitics/screens/professional_details1.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  static String id = '/OnBoardingScreen';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 54, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 315,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Onboarding',
                    style: standardStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Complete the steps below to setup your profile so you can provide care.',
                    style: standardStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, BasicProfileScreen.id);
                    },
                      child: const ReUsedCards(
                          'Basic profile', 'Name, phone number etc.')),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, ProfessionalDetailsScreen1.id);
                    },
                    child: const ReUsedCards(
                        'Professional details', 'Add details to verify'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 148,
              child: Column(
                children: [
                  RedButton(
                      text:'Complete onboarding', onPressed: () {},color: const Color(0xFFFBD4D5),width: MediaQuery.of(context).size.width - 42,),
                  const SizedBox(
                    height: 16,
                  ),
                  WhiteButton(text: 'Log out', onPressed: () {},width: MediaQuery.of(context).size.width - 42,),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ReUsedCards extends StatelessWidget {
  final String heading;
  final String label;
  const ReUsedCards(this.heading, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: const Color(0xFFF3F8FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const SizedBox(
                  height: 40,
                  width: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: standardStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    label,
                    style: standardStyle,
                  )
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
