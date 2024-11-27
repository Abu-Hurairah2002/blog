import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appColor.dart';

class TextfieldClass extends StatelessWidget {
  final TextEditingController controller;
  final String hintname;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final bool obscureText;

  const TextfieldClass({
    super.key,
    required this.controller,
    required this.hintname,
    this.textCapitalization = TextCapitalization.none,
    required this.textInputType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextField(
        enabled: true,
        controller: controller,
        textCapitalization: textCapitalization,
        maxLines: 1,
        keyboardType: textInputType,
        obscureText: obscureText,
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          hintText: hintname,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
