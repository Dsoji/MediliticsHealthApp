import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: greyBlackColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 -
                        200 / 2,
                  ),
                  Text(
                    'Professional details',
                    style: standardStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              height: 4,
              color: Color(0xFF0B7CB9),
              thickness: 4,
              endIndent: 187.5,
              //thickness: ,
            )
          ],
        ),
      ),
    );
  }
}
