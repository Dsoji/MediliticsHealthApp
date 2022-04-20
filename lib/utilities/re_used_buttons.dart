import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String? text;
  final double? width;
  final void Function()? onPressed;
  const WhiteButton({this.text,this.onPressed,this.width,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed!,
      height: 50,
      child:Text(
        text!,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Messina Sans',
          color: Color(0xFF0B7CB9),
        ),
      ),
      minWidth: width!,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: const BorderSide(
            color: Color(0xFF0B7CB9),
          )
      ),
    );
  }
}
class RedButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? width;
  final void Function()? onPressed;

  const RedButton({Key? key,this.width,this.color,this.text,this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed!,
      minWidth: width!,
      color: color,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Messina Sans',
          color: Color(0xFFFFFFFF),
        ),
      ),
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}


