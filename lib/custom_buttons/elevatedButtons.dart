import 'package:blog/constants/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final double borderRadius;
  final double padding;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderRadius = 20.0,
    this.padding = 8.0,
    required this.foregroundColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          side: BorderSide(color: AppColors.grey, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.grey
          ),
        ),
      ),
    );
  }
}
