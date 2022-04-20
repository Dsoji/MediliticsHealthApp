import 'package:flutter/material.dart';

class ReUsedFields extends StatelessWidget {
  const ReUsedFields({Key? key, this.isSuffixIcon, this.height, this.hintText})
      : super(key: key);
  final String? hintText;
  final double? height;
  final bool? isSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height!,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: isSuffixIcon!?const Icon(
              Icons.keyboard_arrow_down,
              size: 20,
            ):null,
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
