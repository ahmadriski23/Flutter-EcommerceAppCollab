import 'package:ecommerce_app/app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

abstract class AppText {
  static TextStyle blackText = GoogleFonts.inter(color: AppColors.black);
  static TextStyle grayText = GoogleFonts.inter(color: AppColors.gray);
  static TextStyle whiteText = GoogleFonts.inter(color: AppColors.white);
  static TextStyle redText = GoogleFonts.inter(color: AppColors.red);
}
