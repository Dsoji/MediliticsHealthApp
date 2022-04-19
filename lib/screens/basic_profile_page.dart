import 'package:flutter/material.dart';
import 'package:medilitics/screens/professional_details1.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';

class BasicProfileScreen extends StatefulWidget {
  static String id = '/BasicProfileScreen';
  const BasicProfileScreen({Key? key}) : super(key: key);

  @override
  State<BasicProfileScreen> createState() => _BasicProfileScreenState();
}

class _BasicProfileScreenState extends State<BasicProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 32,top: 20,right: 20,left: 20),
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
                          width: MediaQuery.of(context).size.width / 2 - 160/2,
                        ),
                        Text(
                          'Basic profile',
                          style: standardStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '👋🏻 Let’s meet you ',
                      style: standardStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 80,
                          width: 80,
                         child: CircleAvatar(
                           backgroundColor: myActiveColor,
                         ),
                       ),

                        Text(
                          'Upload picture',
                          style: standardStyle.copyWith(
                              color: const Color(0xFF0B7CB9),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(height: 14,),
                    SizedBox(
                      height: 174,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Flexible(
                                child: Card(
                                  child: SizedBox(
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'First name',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF3F1F1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                child: Card(
                                  child: SizedBox(
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Last name',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFF3F1F1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFF3F1F1))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Select your gender',
                                      style:
                                          standardStyle.copyWith(fontSize: 14),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF919197),
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: SizedBox(
                              child: InternationalPhoneNumberInput(
                                onInputChanged: (phoneNumber){

                                },
                                inputDecoration: const InputDecoration(
                                  hintText: '000 000 0000',
                                ),
                                inputBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                              ),
                              ),
                              height: 50,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              RedButton(
                  'Complete onboarding', () {
                    Navigator.pushNamed(context, ProfessionalDetailsScreen1.id);
              }, const Color(0xFFFBD4D5)),
            ],
          ),
        ),
      ),
    );
  }
}
