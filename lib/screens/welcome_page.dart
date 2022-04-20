import 'package:flutter/material.dart';
import 'package:medilitics/screens/login_page.dart';
import 'package:medilitics/screens/view_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = '/WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'images/image1.jpg',
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.9,
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.height / 2.9,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 192,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/medilitics_logoX.png',
                                  width: 40,
                                  height: 39,
                                ),
                                const Text(
                                  'MEDILITICS',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Gotham',
                                    color: myActiveColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: const Text(
                                'Unlock better health outcomes for patients.',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Messina Sans',
                                  color: greyBlackColor,
                                ),
                              ),
                              width: MediaQuery.of(context).size.width,
                            ),
                            SizedBox(
                              child: const Text(
                                'Get the tools and insights you need to manage your diabetes and hypertension patients so they can live a healthy life.',
                                style: standardStyle,
                              ),
                              width: MediaQuery.of(context).size.width - 42,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 27,
                      ),
                      SizedBox(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RedButton(text:'Get started',onPressed: () {
                              Navigator.pushNamed(context, ViewScreen.id);
                            }, color: myActiveColor,width: MediaQuery.of(context).size.width - 42,),
                            WhiteButton(text: 'I already have an account',onPressed:  () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            },width: MediaQuery.of(context).size.width - 42,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
