import 'package:flutter/material.dart';
import 'color_resources.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String? text;
  final Color? color;
  final bool? isLoading;
  final TextStyle? textStyle;
  final Function()? onTap;

  ElevatedButtonCustom({
    this.text,
    this.color,
    this.isLoading = false,
    this.textStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: ColorResources.white,
        primary: color,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
      onPressed: onTap,
      child: Text(text ?? '', style: textStyle),
    );
  }
}
