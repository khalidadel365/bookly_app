import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.fontSize,
    this.borderRadius, this.onPressed});
  final Color backgroundColor ;
  final Color textColor ;
  final BorderRadius? borderRadius ;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextButton(
          onPressed:onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),

            )
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize
            ),
          )
      ),
    );
  }
}
