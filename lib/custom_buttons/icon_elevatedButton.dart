import 'package:blog/authentication_screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:blog/constants/appColor.dart';
import 'package:sizer/sizer.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final String text;
  final String svgIconPath;
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final double borderRadius;
  final double iconSize;

  const CustomElevatedIconButton({
    Key? key,
    required this.text,
    required this.svgIconPath,
    required this.onPressed,
    this.borderRadius = 20.0,
    this.iconSize = 24.0,
    required this.foregroundColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(vertical: 3.h,horizontal: 15.w),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.lora(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.white,
              ),
            ),
            SizedBox(width: 8.w), // Space between text and icon
            SvgPicture.asset(
              svgIconPath,
              height: iconSize,
              width: iconSize,
              color: foregroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
