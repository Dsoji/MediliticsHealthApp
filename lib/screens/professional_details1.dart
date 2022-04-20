import 'package:flutter/material.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/screens/profession_details2.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';

class ProfessionalDetailsScreen1 extends StatefulWidget {
  static String id = '/ProfessionalDetailsScreen1';
  const ProfessionalDetailsScreen1({Key? key}) : super(key: key);

  @override
  State<ProfessionalDetailsScreen1> createState() =>
      _ProfessionalDetailsScreen1State();
}

class _ProfessionalDetailsScreen1State
    extends State<ProfessionalDetailsScreen1> {
  bool automaticAddress = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            children: [
              const TitleBar(text: 'Professional details',),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: [
                    const ReUsedFields(
                      height: 48,
                      hintText: 'Board/degree staus',
                      isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    const ReUsedFields(
                      height: 48,
                      hintText: 'MDCN number',
                      isSuffixIcon: false,
                    ),
                    const ReUsedFields(
                      height: 48,
                      hintText: 'Select specialty',
                      isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Enter your address below. We’ll only use this to recommend you to nearby patients.',
                      style: standardStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    automaticAddress
                        ? const ReUsedFields(
                            height: 48,
                            hintText: 'Start typing to select address...',
                            isSuffixIcon: false,
                          )
                        : const ReUsedFields(
                            height: 48,
                            hintText: 'Country',
                            isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                          ),
                    automaticAddress
                        ? const ReUsedFields(
                            hintText: 'Additional address details (optional)',
                            height: 48,
                            isSuffixIcon: false,
                          )
                        : Row(
                            children: const [
                              Flexible(
                                  child: ReUsedFields(
                                height: 48,
                                hintText: 'State',
                                isSuffixIcon: true,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20,
                                    ),
                              )),
                              Flexible(
                                  child: ReUsedFields(
                                    height: 48,
                                    hintText: 'Region',
                                    isSuffixIcon: true,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20,
                                    ),
                                  )),
                            ],
                          ),
                    automaticAddress==false?const ReUsedFields(hintText: 'Enter street address (optional)',height: 48,isSuffixIcon: false,):const SizedBox(),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          automaticAddress=false;
                        });
                      },
                      child: const Text(
                        'Enter address manually',
                        style: TextStyle(color: Color(0xFF0B7CB9)),
                      ),
                    ),
                  ],
                ),
              ),
              RedButton(text:'Next',onPressed: () {
                Navigator.pushNamed(context, ProfessionalDetailsScreen2.id);
              }, color: automaticAddress?const Color(0xFFFBD4D5):myActiveColor,width: MediaQuery.of(context).size.width - 42,)
            ],
          ),
        ),
      ),
    );
  }
}
