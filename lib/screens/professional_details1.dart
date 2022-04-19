import'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';

class ProfessionalDetailsScreen1 extends StatelessWidget {
  static String id  = '/ProfessionalDetailsScreen1';
  const ProfessionalDetailsScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32,top: 20,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: greyBlackColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width /2 - 200/2,
                        ),
                        Text(
                          'Professional details',
                          style: standardStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
