import 'package:flutter/material.dart';

class ReUsedFields extends StatelessWidget {
  const ReUsedFields({Key? key,this.onChanged,this.icon, this.isSuffixIcon, this.height, this.hintText})
      : super(key: key);
  final String? hintText;
  final double? height;
  final bool? isSuffixIcon;
  final Widget? icon;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height!,
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: isSuffixIcon!? icon!:null,
            hintText: hintText!,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
