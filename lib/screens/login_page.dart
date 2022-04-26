import 'package:flutter/material.dart';
import 'package:medilitics/screens/reset_password_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = false;
  String _passwordVal ='';
  String _emailVal='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32, ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TitleBar(
                    text: 'Welcome back',
                    addDivider: false,
                    width:128.w,
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 24.h, left: 20.w, right: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ReUsedFields(
                          hintText: 'Email address',
                          height: 48.h,
                          isSuffixIcon: false,
                          onChanged: (value) {
                           setState(() {
                             _emailVal = value;
                           });
                          },
                        ),
                        ReUsedFields(
                          hintText: 'Password',
                          height: 48.h,
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
                          onChanged: (value) {
                            setState(() {
                              _passwordVal = value;
                            });
                          },
                        ),
                        TextButton(child: const Text('Forgot your password?'),onPressed: (){
                          Navigator.pushNamed(context, ResetPasswordScreen.id);
                        },)
                      ],
                    ),
                  ),
                ],
              ),
              RedButton(
                text: 'Log in',
                width: MediaQuery.of(context).size.width,
                color: _emailVal!=''&&_passwordVal!=''?myActiveColor:const Color(0xFFFBD4D5),
                onPressed: (){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
