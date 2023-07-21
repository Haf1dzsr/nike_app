import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';

class AppTextStyle {
  const AppTextStyle();

  TextStyle get splashTitle => GoogleFonts.raleway(
        fontSize: 65,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 65 / 65,
        letterSpacing: 0,
      );

  TextStyle get onboardTopTitle => GoogleFonts.raleway(
        fontSize: 30,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w900,
        color: AppColorStyle.whiteTitleColor,
        height: 30 / 30,
        letterSpacing: 0,
      );

  TextStyle get onboardBottomTitle => GoogleFonts.raleway(
        fontSize: 34,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 44.2 / 34,
        letterSpacing: 0,
      );

  TextStyle get onboardDesc => GoogleFonts.poppins(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0,
      );

  TextStyle get buttonTitle => GoogleFonts.raleway(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 14 / 14,
        letterSpacing: 0,
      );

  TextStyle get bodyTitle => GoogleFonts.raleway(
        fontSize: 32,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 32 / 32,
        letterSpacing: 0,
      );

  TextStyle get bodySubtitle => GoogleFonts.poppins(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0,
      );

  TextStyle get bodyLabelTitle => GoogleFonts.raleway(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 16,
        letterSpacing: 0,
      );

  TextStyle get bodyLabelSubtitle => GoogleFonts.poppins(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        letterSpacing: 0,
      );

  TextStyle get bodyBottomTitle => GoogleFonts.raleway(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 16,
        letterSpacing: 0,
      );

  TextStyle get buttonLabelTitle => GoogleFonts.poppins(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 14,
        letterSpacing: 0,
      );

  TextStyle get dialogTitle => GoogleFonts.raleway(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 20 / 16,
        letterSpacing: 0,
      );

  TextStyle get bodyLabelHead => GoogleFonts.raleway(
        fontSize: 21,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 21 / 21,
        letterSpacing: 0,
      );

  TextStyle get bodyLabelValue => GoogleFonts.poppins(
        fontSize: 18,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 24 / 18,
        letterSpacing: 0,
      );
}
