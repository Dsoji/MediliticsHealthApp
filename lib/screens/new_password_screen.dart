import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';

class NewPasswordScreen extends StatefulWidget {
  static String id = '/NewPasswordScreen';
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const TitleBar(
                    text: 'Create new password',
                  ),
                  const SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Text(
                          'We just sent you a reset code. Enter it below and set a new password for your account.',
                          style: standardStyle,
                        ),
                        const SizedBox(height: 24,),
                        ReUsedFields(onChanged: (value){

                        },height: 48,isSuffixIcon: false,hintText: 'Reset code',),
                        ReUsedFields(
                          hintText: 'New password',
                          height: 48,
                          isSuffixIcon: true,
                          icon: InkWell(
                            onTap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            child: Icon(
                                _isVisible ? Icons.visibility : Icons.visibility_off),
                          ),

                        ),
                        const SizedBox(height: 16,),
                        Text('8 characters min, a number and special character.',style: standardStyle.copyWith(fontSize: 14,color: const Color(0xFF919197)),)
                      ],
                    ),
                  ),
                ],
              ),
              RedButton(text: 'Create new password',color: myActiveColor,onPressed: (){

              },width: MediaQuery.of(context).size.width-40,)
            ],
          ),
        ),
      ),
    );
  }
}
