import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appColor.dart';

Widget buildIconColumn(
    String iconPath,
    String label,)
{
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
          color: AppColors.black,
        ),
        Text(label, style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w400, // Small label below icon
            color: AppColors.black),
        ),
      ],
    ),
  );
}