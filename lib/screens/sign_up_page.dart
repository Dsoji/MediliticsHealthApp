import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/screens/onboardingPage.dart';

class SignUpScreen extends StatefulWidget {
  static String id = '/SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: greyBlackColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 70,
                        ),
                        const SizedBox(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: greyBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          width: 67,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 48,
                    width: 100,
                    child: Card(
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Email address',
                            labelStyle: TextStyle(
                              color: Color(0xFF919197),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFFF3F1F1),
                            ))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, OnBoardingScreen.id);
              },
              minWidth: MediaQuery.of(context).size.width,
              color: myActiveColor,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7.56,
            )
          ],
        ),
      ),
    ));
  }
}
