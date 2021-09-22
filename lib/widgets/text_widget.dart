import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

//Titles
TextStyle titleStyle = GoogleFonts.roboto(
  letterSpacing: 1.0,
  color: titleColor,
  fontSize: 19.sp,
  fontWeight: FontWeight.w700,
);

TextStyle bodyTitleStyle = GoogleFonts.roboto(
  color: bodyTitleColor,
  letterSpacing: 1.0,
  fontSize: 19.sp,
  fontWeight: FontWeight.w700,
);
TextStyle bodyExplaining = GoogleFonts.roboto(
  color: bodyTitleColor,
  letterSpacing: 1.4,
  fontSize: 19.sp,
  fontWeight: FontWeight.w400,
);

//Littles

TextStyle userNickName = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: buttonLeft,
  fontWeight: FontWeight.w500,
);

TextStyle buttonName = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);

//Body

TextStyle bodyDateStyle = GoogleFonts.roboto(
  fontSize: 12.sp,
  color: bodyDateColor,
  fontWeight: FontWeight.w400,
);

TextStyle bodyEmailStyle = GoogleFonts.roboto(
  fontSize: 13.2.sp,
  color: bodyTitleColor,
  fontWeight: FontWeight.w400,
);

//Gradient

LinearGradient buttonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [buttonLeft, buttonRight],
);

final Shader textShader = LinearGradient(
  colors: <Color>[buttonLeft, buttonRight],
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);
