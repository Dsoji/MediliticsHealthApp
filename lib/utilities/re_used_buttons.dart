import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const WhiteButton(this.text,this.onPressed,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      child:Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Messina Sans',
          color: Color(0xFF0B7CB9),
        ),
      ),
      minWidth: MediaQuery.of(context).size.width - 42,
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
  final String text;
  final Color color;
  final void Function() onPressed;
  const RedButton(this.text,this.onPressed,this.color,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed,
      minWidth: MediaQuery.of(context).size.width - 42,
      color: color,
      child: Text(
        text,
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


