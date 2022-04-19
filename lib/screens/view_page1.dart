import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  final String image;
  final String headingText;
  final String labelingText;
  const ViewPage(this.image,this.labelingText,this.headingText, {Key? key}) : super(key: key);


  @override
  _ViewPageState createState() => _ViewPageState();
}


class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 340,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  widget.image,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24,),
        Column(
          children: [
            Text(
              widget.headingText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Messina Sans',
                color: Color(0xFF222525),
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              widget.labelingText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Messina Sans',
                color: Color(0xFF525257),
              ),
            ),
          ],
        )
      ],
    );
  }
}
