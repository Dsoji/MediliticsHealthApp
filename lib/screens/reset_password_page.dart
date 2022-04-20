import 'package:flutter/material.dart';
import 'package:medilitics/screens/new_password_screen.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String id = '/ResetPasswordScreen';

  const ResetPasswordScreen({Key? key}) : super(key: key);
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
                    text: 'Reset password',
                  ),
                  const SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          'Enter the email address associated with your account to get a password reset code.',
                          style: standardStyle.copyWith(fontSize: 16),
                        ),
                        const SizedBox(height: 24,),
                        ReUsedFields(onChanged: (value){

                        },height: 48,isSuffixIcon: false,hintText: 'Email address',)
                      ],
                    ),
                  )
                ],
              ),
              RedButton(text: 'Get reset code',color: myActiveColor,width: MediaQuery.of(context).size.width-40,onPressed: (){
                Navigator.pushNamed(context, NewPasswordScreen.id);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
